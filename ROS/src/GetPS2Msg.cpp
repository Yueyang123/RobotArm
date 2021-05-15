#include <ros/ros.h>
#include <std_msgs/String.h>

void callBack(const std_msgs::String::ConstPtr& msg)
{
    ROS_INFO("GetPS2 I head that: [%s]",msg->data.c_str());
}

int main(int argc ,char** argv)
{
    ros::init(argc,argv,"GetPS2");
    ros::NodeHandle n;
    ros::Subscriber sub=n.subscribe("PS2",1000,callBack);
    ros::spin();
    return 0;
}
