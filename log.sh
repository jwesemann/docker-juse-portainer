#!/bin/sh

a="${PWD##*/}"
echo $a
c=${a##*-}
echo $c

docker logs -f ${c}

