#!/usr/bin/python


import serial

ser = serial.Serial('path to arduino', 9600)
f = open('text.txt','a')

while 1 : 
    f.write(ser.readline())
    
