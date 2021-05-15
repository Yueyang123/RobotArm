#- coding: utf-8 -*
import time
import sys
import pygame
from PCA9685 import PCA9685
def init(): 
    # 模块初始化
    pygame.init()
    pygame.joystick.init()
    done = False
    clock = pygame.time.Clock()
    joystick_count = pygame.joystick.get_count()
    print(joystick_count)
    joystick = pygame.joystick.Joystick(0)
    joystick.init()
    name = joystick.get_name()
    return  done,name ,clock,joystick_count,joystick



def main():

    done,name ,clock,joystick_count,joystick=init()
    servPlus=[50,50,50,50,50,50]
    pwm=PCA9685(0x40,False)
    pwm.setPWMFreq(50)
    print("start the control")
    while not done:
        for event_ in pygame.event.get():
            print(name)
            #Quit Event
            if event_.type == pygame.QUIT:
                done=True
            elif event_.type == pygame.JOYBUTTONDOWN or event_.type == pygame.JOYBUTTONUP:
                buttons = joystick.get_numbuttons()


                for i in range(buttons):
                    button = joystick.get_button(i)
                    #print("button "+ str(i) + " : " + str(button))
                    if i == 0 and button == 1:
                        servPlus[4]=servPlus[4]+5
                        pwm.setAngle(4,servPlus[4])                       
                        print ("0")
                        pass
                    elif i == 1 and button == 1:
                        servPlus[5]=servPlus[5]+5
                        pwm.setAngle(5,servPlus[5])
                        print ("1")
                        pass
                    elif i == 2 and button == 1:
                        servPlus[4]=servPlus[4]-5
                        pwm.setAngle(4,servPlus[4])                       
                        print ("2")
                        pass
                    elif i == 3 and button == 1:
                        servPlus[5]=servPlus[5]-5
                        pwm.setAngle(5,servPlus[5])
                        print ("3")
                        pass
                    elif i == 4 and button == 1:
                        servPlus[0]=servPlus[0]-5
                        pwm.setAngle(0,servPlus[0])                        
                        print ("4")
                        pass
                    elif i == 5 and button == 1:
                        servPlus[1]=servPlus[1]-5
                        pwm.setAngle(1,servPlus[1])                        
                        print ("5")
                        pass
                    elif i == 6 and button == 1:
                        servPlus[0]=servPlus[0]+5
                        pwm.setAngle(0,servPlus[0])                       
                        print ("6")
                        pass
                    elif i == 7 and button == 1:
                        servPlus[1]=servPlus[1]+5
                        pwm.setAngle(1,servPlus[1])                        
                        print ("7")
                        pass      
                    elif i == 8 and button == 1:
                        print ("8")
                        pass   
                    elif i == 9 and button == 1:
                        print ("9")
                        pass   
                    elif i == 10 and button == 1:
                        print ("10")
                        pass
                    elif i == 11 and button == 1:
                        print ("11")
                        pass

                pass
            elif event_.type == pygame.JOYAXISMOTION :
                axes = joystick.get_numaxes()
                for i in range(axes):
                    axis = joystick.get_axis(i)
                    if i == 1 and axis < 0:
                        #print("12")
                        pass
                    elif i == 1 and axis > 0:
                        #print("13")
                        pass
                    elif i == 0 and axis < 0:
                        #print("14")
                        pass
                    elif i == 0 and axis > 0:
                        #print("15")
                        pass
                    #print ("axis "+str(i) + ": "+str(axis))

            elif event_.type == pygame.JOYHATMOTION:
                hats = joystick.get_numhats()
                for i in range(hats):
                    hat = joystick.get_hat(i)
                    if(hat == (0,1)):
                        servPlus[2]=servPlus[2]+5
                        pwm.setAngle(2,servPlus[2])                        
                        print("12")
                        pass
                    elif hat == (0,-1):
                        servPlus[2]=servPlus[2]-5
                        pwm.setAngle(2,servPlus[2])                        
                        print("13")
                        pass
                    elif hat == (-1,0):
                        servPlus[3]=servPlus[3]-5
                        pwm.setAngle(3,servPlus[3])                       
                        print("14")
                        pass
                    elif hat == (1,0):
                        servPlus[3]=servPlus[3]+5
                        pwm.setAngle(3,servPlus[3])
                        print("15")
                        pass

                    pass
                pass
            pass
        pass

    if ser != None:
        ser.close()
        pass

    return
if __name__ == '__main__':
    main()