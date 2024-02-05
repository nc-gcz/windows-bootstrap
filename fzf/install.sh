#!/usr/bin/env bash

TAG="0.46.1"
FILENAME="fzf-${TAG}-windows_amd64.zip"

mkdir -p /c/Tools/__downloaded 

curl -L -o /c/Tools/__downloaded/${FILENAME} \
    https://github.com/junegunn/fzf/releases/download/${TAG}/${FILENAME}

unzip -o /c/Tools/__downloaded/${FILENAME} -d /c/Tools/

rm /c/Tools/__downloaded/${FILENAME}

echo "Remember to add C:/Tools to your \$PATH in Windows environment variables or in Git Bash."
