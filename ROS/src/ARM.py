#!/usr/bin/env python  

from scipy.optimize import fsolve
from math import sin,cos
import time
import sys
from   PCA9685 import PCA9685
import numpy as np
import rospy
from arm.msg import KEY
currentAngle=[0,0,0,0,0,0]
pwm=PCA9685(0x40,False)
pwm.setPWMFreq(50)
def changeAngle(index,value,pwm):
    step=(value-currentAngle[index])/10
    for i in range(0,10):
        pwm.setAngle(index,currentAngle[index]+i*step)
        time.sleep(0.1)
    currentAngle[index]=value
    pwm.setAngle(index,currentAngle[index])
    print(currentAngle)

def changeto(x,y,z,th4,pwm):
    th4=th4*3.14/180
    def solve_function(unsolved_value):
        th1,th2,th3=unsolved_value[0],unsolved_value[1],unsolved_value[2]
        return [
            75*sin(th4)*(cos(th1)*sin(th2)*sin(th3) - cos(th1)*cos(th2)*cos(th3)) - 75*cos(th4)*(cos(th1)*cos(th2)*sin(th3) + cos(th1)*cos(th3)*sin(th2)) - 55*cos(th1)*sin(th2) - 55*cos(th1)*cos(th2)*sin(th3) - 55*cos(th1)*cos(th3)*sin(th2)-x,
            75*sin(th4)*(sin(th1)*sin(th2)*sin(th3) - cos(th2)*cos(th3)*sin(th1)) - 75*cos(th4)*(cos(th2)*sin(th1)*sin(th3) + cos(th3)*sin(th1)*sin(th2)) - 55*sin(th1)*sin(th2) - 55*cos(th2)*sin(th1)*sin(th3) - 55*cos(th3)*sin(th1)*sin(th2)-y,
            55*cos(th2) + 55*cos(th2)*cos(th3) - 55*sin(th2)*sin(th3) + 75*cos(th4)*(cos(th2)*cos(th3) - sin(th2)*sin(th3)) - 75*sin(th4)*(cos(th2)*sin(th3) + cos(th3)*sin(th2)) + 58-z,
        ]
    solved=fsolve(solve_function,[0, 0, 0])
    solved=solved*180/3.14
    print(solved)
    changeAngle(3,th4*180/3.14,pwm)
    time.sleep(0.5)
    changeAngle(0,solved[0],pwm)#th1
    time.sleep(0.5)
    changeAngle(1,solved[1],pwm)#th2
    time.sleep(0.5)
    changeAngle(2,solved[2],pwm)#th3
    time.sleep(0.5)

def drawLine(x1,y1,z1,pwm):
    x2=x1+10
    y2=y1+10
    z2=z1+10
    x=np.arange(x1,x2,1)
    y=np.arange(y1,y2,1)
    z=np.arange(z1,z2,1)
    for i in range(len(x)):
        changeto(x[i],y[i],z[i],pwm)
def close(pwm):
    changeAngle(5,0,pwm)
def fetch(pwm):
    close(pwm)
    home(pwm)
def home(pwm):
    changeAngle(0,0,pwm)
    time.sleep(0.5)
    changeAngle(1,0,pwm)
    time.sleep(0.5)
    changeAngle(2,0,pwm)
    time.sleep(0.5)
    changeAngle(3,0,pwm)
    time.sleep(0.5)
    changeAngle(4,90,pwm)
    time.sleep(0.5)
    changeAngle(5,-60,pwm)
    time.sleep(0.5)

def callback(msg):
    print(msg)
    changeAngle(0,msg.TH1,pwm)
    time.sleep(0.5)
    changeAngle(1,msg.TH2,pwm)
    time.sleep(0.5)
    changeAngle(2,msg.TH3,pwm)
    time.sleep(0.5)
    changeAngle(3,msg.TH4,pwm)
    time.sleep(0.5)
    changeAngle(4,msg.TH5,pwm)
    time.sleep(0.5)
    changeAngle(5,msg.TH6,pwm)
    time.sleep(0.5)    

def main():
    rospy.init_node('AARM')
    home(pwm)
    sub=rospy.Subscriber('ARMSTATUS',KEY,callback)
    rospy.spin()




if __name__ == '__main__':
    main()