#!/bin/bash


while [ 1 ]
do

if [ `curl https://testbed-firebase.firebaseio.com/Device.json | sed 's/[{}"]//g' | awk -F ":" '{print $2}'` == "off" ]
then
  say "off"

fi

done
