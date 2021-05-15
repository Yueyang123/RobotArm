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
B=np.array([[-190,70,1],
            [-180,10,1],
            [-180,-70,1],
            [-140,80,1],
            [-140,10,1],
            [-150,-140,1]],np.float)
A=np.array([[324,331,1],
           [578,296,1],
           [958,331,1],
           [210,115,1],
           [587,133,1],
           [1096,132,1]],np.float)
# A=np.array([[503,53,1],
#             [406,218,1],
#             [199,222,1],
#             [109,60,1]],np.float)
# B=np.array([[2500,7500,1],
#            [12500,2500,1],
#            [12500,-2500,1],
#            [2500,-7500,1]],np.float)
res,X=cv2.solve(A, B,flags= cv2.SVD_FULL_UV)
a=np.array([580,644,1],np.float)
print (X)
print(a)
print(a@X)