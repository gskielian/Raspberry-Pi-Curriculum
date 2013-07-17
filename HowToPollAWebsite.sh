#!/bin/bash


while [ 1 ] 
do

    signal=`curl -s http://www.SomeWebsiteHere.com | grep -c "TurnLedOn"`

    if [ $signal -eq 0 ]
    then
        say Turn l e d Off
    else
        say Turn l e d On
    fi

    sleep 10


done
