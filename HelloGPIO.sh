#!/bin/bash


echo 11 > /sys/class/gpio/export 

echo out > /sys/class/gpio/gpio11/direction


while [ 1 ]
do

echo 1 > /sys/class/gpio/gpio11/value

sleep 1

echo 0 > /sys/class/gpio/gpio11/value

sleep 3

done
