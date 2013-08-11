#!/usr/bin/expect


set timeout 20


set username [lindex $argv 0]

set password [lindex $argv 1]

spawn git add ../*; git commit -m "new stuff" ; git push origin master

expect 
