#!/bin/sh

a=$0
#echo $a
b=${a##*_}
#echo $b
c=${b%.*}
echo $c

docker start ${c}
docker ps

