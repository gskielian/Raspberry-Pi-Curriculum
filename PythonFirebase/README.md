PythonFirebase
==============

```bash
sudo pip install requests
sudo pip install python-firebase
```


where 'keyword' is instead your keyword (like 'On')
```python

import serial
import time

from firebase import firebase
firebase = firebase.FirebaseApplication('https://name-of-your-firebase.firebaseIO.com',NONE)

while 1 : 
    result = firebase.get('/yourdirectory',None)
    if 'keyword' in str(result) :
        ser.write('1')
    time.sleep(1)
```



References:
http://ozgur.github.io/python-firebase/
