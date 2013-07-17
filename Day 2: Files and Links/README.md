##Day 3 Material


###wget

One way to make your Raspberry Pi interact with the interwebs is to have it read webpages (I use to this to find out when my favorite comic books are released online).

all that is necessary is to 
```
while [ 1 ] ; do wget --quiet -O - https://docs.google.com/document/d/1iu3ikicSo63_Lvh1OFNOrNweGWe8XGnZ1uiTkquIw-E/pub | grep -c asdf ; sleep 60 ; donei
```
