#include "ros/ros.h"
#include "lower_limb_kinematics/imu_sample.h"

#include <iostream>
#include <gsl/gsl_errno.h>
#include <gsl/gsl_matrix.h>
#include <gsl/gsl_odeiv2.h>

#define ORDER 3

void imu_sample_callback(const lower_limb_kinematics::imu_sample& imu1_data)
{
    ROS_INFO("I got the message: %f %f %f", imu1_data.imu_sample[0], imu1_data.imu_sample[0], imu1_data.time);
    
}

int main(int argc, char ** argv)
{
    //Initialize ROS
    ros::init(argc, argv, "single_imu_kalman_filter");
    
    //Get handle to node
    ros::NodeHandle n;

    //Subscribe to the foot_imu topic
    ros::Subscriber sub = n.subscribe("foot_imu", 1000, imu_sample_callback);

    //Loop and pump callbacks
    ros::spin();
    
    //End
    return 0;
} 
