#include <ros/ros.h>
#include <std_msgs/String.h>
#include <sstream>
int main(int argc,char ** argv)
{
    //启动节点并设置名称
    ros::init(argc,argv,"ps2");
    //节点句柄
    ros::NodeHandle n;
    ROS_INFO_STREAM("PS2 NODE INIT");
    //设置节点为发布者，并将发布的主题类型告知节点管理器
    //参数1：消息名称
    //参数2：缓冲区大小
    ros::Publisher pub=n.advertise<std_msgs::String>("PS2",1000);
    //一秒发送10次
    ros::Rate loop_rate(10);
    while(ros::ok()){
        std_msgs::String msg;
        std::stringstream ss;
        ss<<"I am PS node";
        msg.data=ss.str();
        //发布消息
        pub.publish(msg);
        ros::spinOnce();
        loop_rate.sleep();
    }
    return 0;
}