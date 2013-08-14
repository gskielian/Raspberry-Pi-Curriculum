PythonFirebase
==============

```bash
sudo pip install requests
sudo pip install python-firebase
```

more bash
```bash
sudo apt-get install python-dev
curl -O http://python-distribute.org/distribute_setup.py
sudo python distribute_setup.py
curl -O https://raw.github.com/pypa/pip/master/contrib/get-pip.py
sudo python get-pip.py
sudo pip install virtualenv
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
        firebase.put('/','nameoffile', { 'SomeCategory': 'SomeValue'})
        time.sleep(15)
    time.sleep(1)
```



References:
http://ozgur.github.io/python-firebase/
