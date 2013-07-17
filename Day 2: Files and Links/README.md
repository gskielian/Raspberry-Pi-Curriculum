##Day 3 Material

###find the file



###wget

One way to make your Raspberry Pi interact with the interwebs is to have it read webpages (I use to this to find out when my favorite comic books are released online).

all that is necessary is to check a url for the existence of some word (could be practically any website that can be bookmarked).
 
```
#!/bin/bash

while [ 1 ] 
do 
wget --quiet -O - http://www.url.com | grep -c asdf
sleep 60
done
```


###Tropos

This is a really cool website, ask me for the number we are demoing and I'll gladly let you try it out for educational purposes.


