#!/usr/bin/python

import time
import wiringpi2

wiringpi2.wiringPiSetup()
wiringpi2.wiringPiSetupSys()
wiringpi2.wiringPiSetupGpio()

#setup

wiringpi2.pinMode(11,1) # turn 11 into an output

#loop

while 1 :
    wiringpi2.digitalWrite(11,1)
    time.sleep(2)
    wiringpi2.digitalWrite(11,0)
    time.sleep(2)
