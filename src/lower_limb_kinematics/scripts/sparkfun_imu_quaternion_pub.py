#!/usr/bin/env python

import rospy
import time
import socket
import struct
from lower_limb_kinematics.msg import quaternion_sample, foot_rp
from geometry_msgs.msg import Quaternion
import geometry_msgs.msg
import tf
import tf2_ros
import sys

UDP_SERVER_PORT = 9751
IMU_DST_PORT = 9750
CMD_WAIT = b'W\n'
CMD_RAW = b'R\n'
CMD_QUAT = b'Q\n'
CMD_NODEBUG = b'DBGOFF\n'
TEST_IMU = 7
SAMPLE_RATE = 50

#List of IP Addresses for the IMUs
IMU_IPS = ['192.168.1.100',
           '192.168.0.11',
           '192.168.0.12',
           '192.168.0.13',
           '192.168.0.14',
           '192.168.0.15',
           '192.168.0.16',
           '192.168.0.30']

#List of active IMUs to confgure before each experiment
ACTIVE_IMU_LIST = [0]

def prep_imu(imu_number):
    '''
    Function to prepare the IMUs to transmit the raw data that we need. It 
    sends the necessary commands over UDP to the IMU that gets it read to
    transmit.
    
    Parameters
    ------------
    imu_number: The index of the IMU that should be prepared.
    '''
    rospy.loginfo("Setting up IMU #{} at {}".format(imu_number, IMU_IPS[imu_number]))
    xbsock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM, socket.IPPROTO_UDP)
    rospy.loginfo("Sending wait command...")
    xbsock.sendto(CMD_WAIT, (IMU_IPS[imu_number], IMU_DST_PORT))
    time.sleep(0.1)
    rospy.loginfo("Sending NODEBUG command...")
    xbsock.sendto(CMD_NODEBUG, (IMU_IPS[imu_number], IMU_DST_PORT))
    time.sleep(0.1)
    rospy.loginfo("Sending QUAT command...")
    xbsock.sendto(CMD_QUAT, (IMU_IPS[imu_number], IMU_DST_PORT))
    rospy.loginfo("Done setting up IMU #{}".format(imu_number))

def stop_imu(imu_number):
    '''
    Function to stop the IMUs after the experiment. It sends the wait command so
    that the IMUs stop transmitting and wait till the next experiment starts.
    
    Parameters
    ------------
    imu_number: The index of the IMU that should be stopped.
    '''
    rospy.loginfo("Stopping up IMU #{} at {}".format(imu_number, IMU_IPS[imu_number]))
    xbsock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM, socket.IPPROTO_UDP)
    xbsock.sendto(CMD_WAIT, (IMU_IPS[imu_number], IMU_DST_PORT))

def imu_data_publisher():
    '''
    Gets the IMU data from a UDP port and publishes it on the foot_imu
    topic.
    '''
    #Initialize publisher on topic foot_imu with datatype imu_sample
    #and message queue size 10
    pub = rospy.Publisher('foot_imu_quat', Quaternion, queue_size=10)
    pub2 = rospy.Publisher('foot_roll_pitch', foot_rp, queue_size=10)
    #Initialize the node with name
    rospy.init_node('sparkfun_imu_data_pub', anonymous=True)
    #Rate at which to publish
    rate = rospy.Rate(SAMPLE_RATE) #100 Hz

    #Setup a socket for capturing all the incoming data
    rospy.loginfo("Starting UDP Listener on port %d...", UDP_SERVER_PORT)
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM, socket.IPPROTO_UDP)
    sock.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    sock.bind(("", UDP_SERVER_PORT))
    rospy.loginfo("Done")

    #Prepare the IMUs
    for imu_num in ACTIVE_IMU_LIST:
        prep_imu(imu_num)
        time.sleep(0.05)

    #Variable with imu_sample datatype
    imu1_data = Quaternion()
    imu1_data.w = 0
    imu1_data.x = 0
    imu1_data.y = 0
    imu1_data.z = 0

    br = tf2_ros.TransformBroadcaster()
    t = geometry_msgs.msg.TransformStamped()
    t.header.stamp = rospy.Time.now()
    t.header.frame_id = "world"
    t.child_frame_id = "IMU"
    t.transform.translation.x = 0
    t.transform.translation.y = 0
    t.transform.translation.z = 1
    t.transform.rotation.w = 1
    t.transform.rotation.x = 0
    t.transform.rotation.y = 0
    t.transform.rotation.z = 0

    foot_rp_data = foot_rp()
    foot_rp_data.roll = 0
    foot_rp_data.pitch = 0    
    
    rospy.loginfo("Listening for data...")
    while not rospy.is_shutdown():
        try:
            #Wait for data from the UDP port
            data, addr = sock.recvfrom(16)
            #rospy.loginfo("Got data %s from %s:%d", data, addr[0], addr[1])
            #print(len(data))
            vals = struct.unpack(4*'f', data)
            #print(vals)
            #Publish the data on the topic
            imu1_data.w = vals[0]
            imu1_data.x = vals[1]
            imu1_data.y = vals[2]
            imu1_data.z = vals[3]
            t.header.stamp = rospy.Time.now()
            t.transform.rotation.w = vals[0]
            t.transform.rotation.x = vals[1]
            t.transform.rotation.y = vals[2]
            t.transform.rotation.z = vals[3]
            euler = tf.transformations.euler_from_quaternion(vals[1:] + (vals[0],))
            foot_rp_data.roll = euler[0]

            foot_rp_data.pitch = euler[1]
            pub.publish(imu1_data)
            pub2.publish(foot_rp_data)
            br.sendTransform(t)
        except:
            rospy.logerr("Error when getting UDP data!!")
            rospy.logerr("%s",sys.exc_info()[1])
        rate.sleep()
    
    #Clean up
    sock.close()
    rospy.loginfo("Stopping main thread...")
    #Stop the IMUs
    for imu_num in ACTIVE_IMU_LIST:
        stop_imu(imu_num)
        time.sleep(0.05)

if __name__ == '__main__':
    try:
        imu_data_publisher()
    except rospy.ROSInterruptException:
        pass
