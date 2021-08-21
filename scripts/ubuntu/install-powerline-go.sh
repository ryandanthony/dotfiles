#!/usr/bin/env bash
DIRECTORY=~/go/bin
if [ ! -d "$DIRECTORY" ]; then
    mkdir -p ~/go/bin/
fi

FILE=~/go/bin/powerline-go
if [ ! -f "$FILE" ]; then
    version=v1.21.0
    curl -L https://github.com/justjanne/powerline-go/releases/download/$version/powerline-go-linux-amd64 -o ~/go/bin/powerline-go
    chmod +x ~/go/bin/powerline-go
fi