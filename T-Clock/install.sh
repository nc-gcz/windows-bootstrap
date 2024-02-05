#!/usr/bin/env bash

# https://github.com/White-Tiger/T-Clock/releases/tag/v2.4.4%23492-rc

TAG="v2.4.4%23492-rc"
FILENAME="T-Clock.zip"

mkdir -p /c/Tools/__downloaded 

curl -L -o /c/Tools/__downloaded/${FILENAME} \
    https://github.com/White-Tiger/T-Clock/releases/download/${TAG}/${FILENAME}

mkdir -p /c/Tools/T-Clock

unzip -o /c/Tools/__downloaded/${FILENAME} -d /c/Tools/T-Clock/

rm /c/Tools/__downloaded/${FILENAME}
