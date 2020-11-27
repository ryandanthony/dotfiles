#!/usr/bin/env bash
mkdir -p ~/go/bin/
version=v1.18.0
curl -L https://github.com/justjanne/powerline-go/releases/download/$version/powerline-go-linux-amd64 -o ~/go/bin/powerline-go
chmod +x ~/go/bin/powerline-go
