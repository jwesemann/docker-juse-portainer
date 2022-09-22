#!/bin/sh

a="${PWD##*/}"
echo $a
c=${a##*-}
echo $c

docker start ${c}
docker ps

