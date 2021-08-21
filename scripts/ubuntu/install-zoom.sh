#!/usr/bin/env bash

if which zoom > /dev/null
then
    echo "zoom is installed, skipping..."
else
    curl -L https://zoom.us/client/latest/zoom_amd64.deb -o ~/Downloads/zoom_amd64.deb
    sudo apt install ~/Downloads/zoom_amd64.deb -y
fi
