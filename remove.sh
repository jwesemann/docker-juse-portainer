#!/bin/sh

a="${PWD##*/}"
echo $a
b=${a##*-}
echo $b

docker stop ${b}
docker container rm ${b}


