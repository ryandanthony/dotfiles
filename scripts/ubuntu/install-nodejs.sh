#!/usr/bin/env bash

if which node > /dev/null
then
    echo "node is installed, skipping..."
else
    sudo curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
    sudo apt-get install nodejs -y
fi