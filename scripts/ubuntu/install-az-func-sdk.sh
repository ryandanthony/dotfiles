#!/usr/bin/env bash
if test -f "/etc/apt/trusted.gpg.d/microsoft.gpg"; then
      echo "gpg Already Installed. Skipping"
else
  curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
  sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
fi

if test -f "/etc/apt/sources.list.d/dotnetdev.list"; then
      echo "dotnetdev.list Already Installed. Skipping"
else
  sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-$(lsb_release -cs)-prod $(lsb_release -cs) main" > /etc/apt/sources.list.d/dotnetdev.list'
  sudo apt-get update
fi
sudo apt-get install azure-functions-core-tools-3 -y
