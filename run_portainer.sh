#!/bin/sh

a=$0
#echo $a
b=${a##*_}
#echo $b
c=${b%.*}
echo $c

docker run -d -p 8000:8000 -p 9443:9443 --name ${c} --restart=always -v /var/run/docker.sock:/var/run/docker.sock  -v ${c}:/data  ${c}/portainer-ce:latest
docker ps

