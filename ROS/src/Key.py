#!/usr/bin/env python  
import rospy  
from arm.msg import KEY  
  
class KEYMODE:  
    def getInput(self):
        res= input()
        if res>90 or res<-90:
            return 0
        else:
            return res

    def __init__(self):  
        rospy.init_node('KEY_NODE')
        pub=rospy.Publisher('ARMSTATUS',KEY)
        rate = rospy.Rate(1)  
        self.cmd = None  
        cmd = KEY()  
        rescmd=KEY() 
        cmd.TH1 = 0 
        cmd.TH2 = 0 
        cmd.TH3 = 0 
        cmd.TH4 = 0 
        cmd.TH5 = 0 
        self.cmd = cmd  
        while not rospy.is_shutdown():  
            print('TH1:')
            self.cmd.TH1=self.getInput()
            print('TH2:')
            self.cmd.TH2=self.getInput()
            print('TH3:')
            self.cmd.TH3=self.getInput()
            print('TH4:')
            self.cmd.TH4=self.getInput()
            print('TH5:')
            self.cmd.TH5=self.getInput()
            print('TH6:')
            self.cmd.TH6=self.getInput()            
            print(self.cmd)
            pub.publish(self.cmd)  
            rate.sleep()  

if __name__ == '__main__':
    KEYMODE()