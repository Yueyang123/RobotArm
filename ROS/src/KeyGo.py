#!/usr/bin/env python  
import rospy  
from arm.msg import ZUOBIAO  
  
class KEYGOMODE:  
    def __init__(self):  
        rospy.init_node('KEY_NODE')
        pub=rospy.Publisher('ZUOBIAO',ZUOBIAO)
        rate = rospy.Rate(1)  
        self.cmd = None  
        cmd = ZUOBIAO()  
        rescmd=ZUOBIAO() 
        cmd.X = 120 
        cmd.Y = 10 
        cmd.Z = 10 
        self.cmd = cmd  
        while not rospy.is_shutdown():  
            print('INPUT X')
            cmd.X=input()
            print('INPUT Y')
            cmd.Y=input()
            print('INPUT Z')
            cmd.Z=input()
            print(self.cmd)
            pub.publish(self.cmd)  
            rate.sleep()  

if __name__ == '__main__':
    KEYGOMODE()