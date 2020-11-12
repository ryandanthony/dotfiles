#!/usr/bin/env bash
curl -L https://prerelease.keybase.io/keybase_amd64.deb -o ~/Downloads/keybase_amd64.deb
sudo apt install ~/Downloads/keybase_amd64.deb -y
run_keybase
