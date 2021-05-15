'''
Descripttion: 计算二维坐标系的转换矩阵
version: 
Author: Yueyang
email: 1700695611@qq.com
Date: 2021-05-12 17:38:54
LastEditors: Yueyang
LastEditTime: 2021-05-12 22:55:09
'''

import numpy as np
import cv2

cap = cv2.VideoCapture(0)
font = cv2.FONT_HERSHEY_SIMPLEX  # 设置字体样式
def on_EVENT_LBUTTONDOWN(event, x, y, flags, param):
    if event == cv2.EVENT_LBUTTONDOWN:
        print(' x:'+str(x) +' y:' +str(y))

if cap.isOpened() is True:  # 检查摄像头是否正常启动
    while(True):
        ret, frame = cap.read()
        gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)  # 转换为灰色通道
        circles = cv2.HoughCircles(
            gray, cv2.HOUGH_GRADIENT, 1, 200, param1=100, param2=30, minRadius=100, maxRadius=150)
        if circles is not None:  # 如果识别出圆
            for circle in circles[0]:
                #  获取圆的坐标与半径
                x = int(circle[0])
                y = int(circle[1])
                r = int(circle[2])
                cv2.circle(frame, (x, y), r, (0, 0, 255), 3)  # 标记圆
                cv2.circle(frame, (x, y), 3, (255, 255, 0), -1)  # 标记圆心
                text = 'x:  '+str(x)+' y:  '+str(y)+' r:  '+str(r)
                cv2.putText(frame, text, (10, 30), font, 1, (0, 255, 0), 2, cv2.LINE_AA, 0)  # 显示圆心位置
        else:
            # 如果识别不出，显示圆心不存在
            cv2.putText(frame, 'x: None y: None', (10, 30), font, 1, (0, 255, 0), 2, cv2.LINE_AA, 0)
        cv2.imshow('frame', frame)
        cv2.setMouseCallback("frame", on_EVENT_LBUTTONDOWN)
        k = cv2.waitKey(5) & 0xFF
        if k == 27:
            break
    cap.release()
    cv2.destroyAllWindows()
else:
    print('cap is not opened!')