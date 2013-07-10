#!/bin/bash



/usr/bin/expect <<EOD
spawn ssh -o StrictHostKeyChecking=no -o CheckHostIP=no pi@10.0.1.52
expect "password:"
send "raspberry\n"
interact
EOD
