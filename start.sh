#bin/bash

docker build -t kali-xrdp .

docker run -d -p 3389:3389 kali-xrdp