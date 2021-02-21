#!/usr/bin/env bash
packages=$(dpkg-query -W google-chrome-stable)
if [[ "$packages" == *"google-chrome-stable"* ]]; then
    echo "google-chrome-stable aready installed. Skipping"
else
  wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O ~/Downloads/google-chrome-stable_current_amd64.deb
  sudo dpkg -i ~/Downloads/google-chrome-stable_current_amd64.deb
fi
