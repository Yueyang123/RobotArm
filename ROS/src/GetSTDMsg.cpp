#include <ros/ros.h>
#include "arm/PS2.h"

void callBack(const arm::PS2::ConstPtr& msg )
{
    ROS_INFO("I Heard :[%d][%d][%d]",msg->A,msg->B,msg->C);
}

int main(int argc ,char** argv)
{
    ros::init(argc,argv,"getMsg");
    ros::NodeHandle n;
    ros::Subscriber sub =n.subscribe("PS2",1,callBack);
    ros::spin();
    return 0;
}