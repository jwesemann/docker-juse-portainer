#!/bin/sh

a=$0
#echo $a
b=${a##*_}
#echo $b
c=${b%.*}
echo $c

docker container stop ${c}
docker ps

