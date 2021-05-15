#include <ros/ros.h>
#include "arm/PS2.h"
#include <sstream>
int main(int argc,char** argv)
{
    ros::init(argc,argv,"sendMsg");
    ros::NodeHandle n;
    ros::Publisher pub=n.advertise<arm::PS2>("PS2",1000);
    ros::Rate loop_rate(10);
    while(ros::ok())
    {
        arm::PS2 msg;
        msg.A=1;
        msg.B=1;
        msg.C=1;
        pub.publish(msg);
        ros::spinOnce();
        loop_rate.sleep();
    }
    return 0;
}


