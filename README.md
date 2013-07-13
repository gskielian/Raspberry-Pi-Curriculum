Microcontrollers
================



##Topics Covered So Far:


We did cover many Linux Administration topics so far:


**Command Line Editors:**
- Nano
  - basic usage (WYSIWYG Editor by in large)
- Vim
  - basic editing and saving of files
  - switching between different modes (normal mode, insert mode, visual mode)
  - Macros for recording and automating code generation and tasks.
- Emacs* (will cover this on Wednesday)

**Shell Scripting:**
- Bash
  - piping outputs
  - redirection of outputs


#####League of its own: Python
- How to install pyserial and use it for communicating to the Arduino via the Command Line Interface.

#####CLI Utilities: 
  - `crontab -e`
     - min hour mday month wday Command
     - example:  * * * * * open http://akk.li/pics/anne.jpg
     
  - `ls`
    - lists the files, also can do `ls -l` for more information
    
  - `cd`
    -  changes your directory (aka which folder you are in).  
        `cd ~` moves to home folder, 
        `cd ~/Desktop` moves to the desktop.
        `cd ..` moves back one folder

  - `pwd` 
    -  prints to stdout your current location
        `pwd`
    -  this will tell you where you are directory wise
  
  - `rm [filename]`
    -deletes a file

  - `ps aux` 
    - actually `ps` is the command, but I always use it with ps aux so it lists all the current processes.
    - use this and grep to find a process, then get the id of the process and kill it with the kill command
    
  - `kill`
    - example `kill 82560` will kill (force quit) the program or process with id 82560
    
  - `grep` 
    - use this to search
    - I usually use this with pipes to narrow down on the key results:
      - `ls -l | grep .sh` will list all files that have an `.sh`   in their name
      - `ps aux | grep lovelySong.sh`  will only show the processes which have `lovelySong.sh` in their description.
      - `history | grep ssh` will look through all of your past lines and show any line with an "ssh" in it.
      
  - `ssh username@ipaddress`
      - this command is a crowd pleaser, and it allows you to get into another computer. You all know very well what this means.
  
  - `ifconfig`
      - lists information about the current internet connections.  You may want to pipe the output to grep to quickly find the ip.

  - `arp -a`
      - (*mac Only) lists the ip-addesses of those on your network
  - `open http://www.url.com`
      - (*Mac Only) This command will open a specified url in a mac computer.  There is a similar command `xdg-open `
  
  - `open [something]`
      - It gets two lines because this command is really something.  Open literally anything on a mac with this command.
  
  - `sudo shutdown -h now`
      - This will allow you to shutdown a computer via the command line.
      - `shutdown now` is relatively universal --  I think the windows version is very similar.
  
  - `sudo shutdown -k now`
      - This kicks other people off your computer.

  - `echo "hi there"`
      - the "say" of the command line, really useful when you want your computer to talk to you
  
  - `read variableName`
      - this allows you to store a value in some variable name. Really useful with echo.
  
  - `date`
      - prints the date to the stdout.
  
  - `wall`
      - writes everyone at the same time, interrupts their flow. (great for stun effect! -- but doesn't actually impede their typing if they know what they are doing)
      - e.g. `echo "hello everyone" | wall`
  - `write [username]`
      - this starts talking to a certain user.  It is more civil than wall.


#####Shell Loops:

  - `while [ 1 ] ; do echo date ; sleep 1; done` 
      - example of a basic loop in the command line.
      - when scripting in a .sh file it may look like this:


<pre>
<code class="bash">
#!/bin/bash

while [ 1 ]
do
  echo date
  sleep 1 
done
</code>
</pre>


<pre>
<code class="bash">
#!/bin/bash
x=100
while [ $x -gt 0 ]
do
  say "Liftoff in $x seconds"
  sleep 1
  x=$(( $x - 1 ))
done

say -v "Just Kidding!  PsyKEE!"

</code>
</pre>

`chmod +x fileName`

`bash filename`
