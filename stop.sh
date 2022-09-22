#!/bin/sh

a="${PWD##*/}"
echo $a
c=${a##*-}
echo $c

docker container stop ${c}
docker ps

