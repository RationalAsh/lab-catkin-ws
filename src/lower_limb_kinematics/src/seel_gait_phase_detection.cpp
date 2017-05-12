#include "ros/ros.h"
#include "lower_limb_kinematics/imu_sample.h"
#include "std_msgs/Float64.h"

#include <iostream>
#include <cmath>
#include <gsl/gsl_errno.h>
#include <gsl/gsl_matrix.h>
#include <gsl/gsl_odeiv2.h>

#define ORDER 3
#define G_CONST -9.81
#define LOOP_RATE 50
#define FLAT_PHASE 1
#define A_REST 0.3
#define G_REST 1.3

void imu_sample_callback(const lower_limb_kinematics::imu_sample& imu)
{
    //Log the data for debugging. Turn off when you actually run the program.
    //ROS_INFO("ax: %f, ay: %f, az: %f, gx: %f, gy: %f, gz:%f",
//	     imu.imu_sample[0], imu.imu_sample[1], imu.imu_sample[2], 
//	     imu.imu_sample[3], imu.imu_sample[4], imu.imu_sample[5]);

    //Gait phase
    static int gphase = -1;

    //Accelerometer data
    float ax = imu.imu_sample[0]*-G_CONST;
    float ay = imu.imu_sample[1]*-G_CONST;
    float az = imu.imu_sample[2]*-G_CONST;

    //Gyroscope data
    float gx = imu.imu_sample[3];
    float gy = imu.imu_sample[4];
    float gz = imu.imu_sample[5];

    //Calculate vector norms
    float acc_norm = fabs(G_CONST + sqrt(pow(ax,2) + pow(ay,2) + pow(az,2)));
    float gyro_norm = sqrt(pow(gx,2) + pow(gy,2) + pow(gz,2));

    if((acc_norm < A_REST) && (gyro_norm < G_REST))
    {
	gphase = FLAT_PHASE;
    }
    else
    {
	gphase = -1;
    }
    
    ROS_INFO("acc_norm: %f, gyro_norm: %f, Phase: %d", acc_norm, gyro_norm, gphase);
}

int main(int argc, char ** argv)
{
    //Initialize ROS
    ros::init(argc, argv, "seel_gait_phase_detection");
    
    //Get handle to node
    ros::NodeHandle n;

    //Subscribe to the foot_imu topic
    ros::Subscriber sub = n.subscribe("foot_imu", 1000, imu_sample_callback);
    //Create the topic to publish the vector norms
    ros::Publisher pub = n.advertise<std_msgs::Float64>("accel_norm", 1000);

    //Loop and pump callbacks
    ros::spin();
    
    //End
    return 0;
} 
