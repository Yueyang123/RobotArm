#!/usr/bin/env python

import rospy
from std_msgs.msg import Int32


def callback(msg):
    print(msg.data)

rospy.init_node('subsribe')
sub=rospy.Subscriber('PS2',Int32,callback)
rospy.spin()

