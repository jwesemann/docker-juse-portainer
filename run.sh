#!/bin/sh

a="${PWD##*/}"
echo $a
c=${a##*-}
echo $c


docker run -d -p 8000:8000 -p 9443:9443 --name ${c} --restart=always -v /var/run/docker.sock:/var/run/docker.sock  -v ${c}:/data  ${c}/portainer-ce:latest
docker ps

