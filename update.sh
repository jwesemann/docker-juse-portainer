#!/bin/sh

a="${PWD##*/}"
echo $a
c=${a##*-}
echo $c

docker pull ${c}/portainer-ce:latest
docker stop ${c}
docker container rm ${c}
docker run -d -p 8000:8000 -p 9443:9443 --name ${c} --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data  ${c}/portainer-ce:latest

docker ps


