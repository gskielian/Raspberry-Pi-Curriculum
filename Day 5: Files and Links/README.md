Day 5
===========


##1v1 and Tournaments <i> broadcasted via vnc</i>

#### Capture the File  
    - Round 1: no preparation
    - Round 2: scripts only
    - Round 3: aliases only
    - Round 4: Free For All

####Rules:
1. Games will last 13  minutes and 37 seconds each.
2. A victory will earn 1337 pnts
3. over 9000 points will earn a Donut (no lie).




###Inputs

`cat /sys/class/gpio/gpio11/value`

###Practice with the Raspberry Pi GPIO Layout

###Relays && Level Shifters

Using a simple transistor and a 5V source (like that on the Raspberry PI GPIO pins) you can plant a Raspberry Pi from any outlet and have it act as a microcontroller with internet connectivity. 

###Emails

Now thay you have a way to send signals to your Raspberry Pi or Arduino via the internet (polling with wget) next we give it a way to communicate to you via the internet.

The simple command to send a mail is structured as follows:

`echo "This is a message" | mail -s "This is my Subject" somename@gmail.com`

Let us now practice sending an email to you every 1 minute if a PIR motion sensor detects movement near your Raspberry Pi.  



###Two more script types: Python and Expect
There are many scripting languages, we have practiced using Bourne Again SHell (bash) so far -- and it is really similar to many others.  Python is really popular, and because of its user base and cleanness it is really important.

Expect is another language which has its own way of doing things, Bash + Expect is a powerful combination which can automate many of your processes which would otherwise require manually typing in of passwords.

####Using wiringpi2 and Writing Python Scripts
There are better ways than pyserial to interact with the GPIO pins.



`sudo apt-get install python-dev`
`sudo apt-get install python-setuptools`

Then download wiringpi2 from its github repository and enter the python shell.

```
import wiringpi2
import time

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
```

####Using expect + bash to automate a password login

We will do basic single login with expect.

Then we will call the expect script from a bash script, use a while loop in bash to try different values.

