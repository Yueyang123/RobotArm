#!/usr/bin/env python3
import rospy
from sensor_msgs.msg import Image
import cv2,cv_bridge
import tensorflow as tf
from tensorflow import keras
import numpy as np
import matplotlib.pyplot as plt
font = cv2.FONT_HERSHEY_SIMPLEX
model =keras.models.load_model('/home/yuri/WorkSpace/TensorFlow/TensorFlow/numdet/model.h5') #读取网络
kernel = cv2.getStructuringElement(cv2.MORPH_RECT,(3,3))
rospy.init_node('vision')
cap= cv2.VideoCapture(1)
while  True:
    print('ENTER ANY KEY TO CONTINUE !!')
    input()
    ret, image = cap.read()
    gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)  # 转换为灰色通道
    circles = cv2.HoughCircles(
    gray, cv2.HOUGH_GRADIENT, 1, 200, param1=100, param2=30, minRadius=100, maxRadius=150)
    rmax=0
    if circles is not None:  # 如果识别出圆
        for circle in circles[0]:
            #  获取圆的坐标与半径
            x = int(circle[0])
            y = int(circle[1])
            r = int(circle[2])
            if(r>rmax):
                frame=image[x-r:x+r,y-r:y+r]
            print(rmax)
    if  frame is None:continue
    cv2.imwrite('/home/yuri/WorkSpace/ROS/arm/src/find.jpg',frame)
    image_ =  cv2.resize(frame, (250,250), interpolation = cv2.INTER_AREA)
    image = cv2.cvtColor(image_, cv2.COLOR_BGR2GRAY)#灰度化处理
    img_w = cv2.Sobel(image,cv2.CV_16S,0,1)#Sobel滤波，边缘检测
    img_h = cv2.Sobel(image,cv2.CV_16S,1,0)#Sobel滤波，边缘检测
    img_w = cv2.convertScaleAbs(img_w)
    _, img_w = cv2.threshold(img_w,0,255,cv2.THRESH_OTSU|cv2.THRESH_BINARY)
    img_h = cv2.convertScaleAbs(img_h)
    _, img_h = cv2.threshold(img_h,0,255,cv2.THRESH_OTSU|cv2.THRESH_BINARY)
    image = img_w + img_h
    image = cv2.morphologyEx(image,cv2.MORPH_CLOSE,kernel)
    temp_data = np.zeros((250,10))
    image = np.concatenate((temp_data,image,temp_data),axis = 1)
    temp_data = np.zeros((10,270))
    image = np.concatenate((temp_data,image,temp_data),axis = 0)
    image = cv2.convertScaleAbs(image)
    contours, hierarchy = cv2.findContours(image, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
    for _ in contours:
        x,y,w,h = cv2.boundingRect(_)
        if w*h  < 100:
            continue
        img_model = image[y-10:y+h+10,x-10:x+w+10]
        img_model =  cv2.resize(img_model, (28,28), interpolation = cv2.INTER_AREA)
        img_model = img_model/255
        predict = model.predict(img_model.reshape(-1,28,28,1))
        print(predict)
        if np.max(predict) > 0.5:
            data_predict = str(np.argmax(predict))
            image_z = cv2.rectangle(image_,(x-10,y-10),(x + w-10,y + h-10),(255,0,0),1)
            image_z = cv2.putText(image_z,data_predict , (x+10, y+10), font, 0.7, (0, 0, 255), 1)
    if image_z is not NONE:
        cv2.imwrite("/home/yuri/WorkSpace/ROS/arm/src/capture.jpg", image_z)
    k = cv2.waitKey(30) & 0xFF
    if k == 27:
        break
