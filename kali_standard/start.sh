#bin/bash

sudo apt-get update -y

sudo apt-get upgrade -y

sudo apt-get install docker.io -y

sudo docker build -t kali-standard .

sudo docker run -d -p 3389:3389 -p 5432:5432 --name kali -v kali_data:$(pwd) kali-standard