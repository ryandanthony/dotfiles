#!/usr/bin/env bash

packages=$(dpkg-query -W packages-microsoft-prod)
if [[ "$packages" == *"packages-microsoft-prod"* ]]; then
    echo "MSFT packages aready installed. Skipping"
else
  ubuntuVersion=$(lsb_release -r -s)
  wget https://packages.microsoft.com/config/ubuntu/$ubuntuVersion/packages-microsoft-prod.deb -O ~/Downloads/packages-microsoft-prod.deb
  sudo dpkg -i ~/Downloads/packages-microsoft-prod.deb
fi

sudo apt-get update;
sudo apt-get install dotnet-sdk-5.0 dotnet-sdk-3.1=3.1.110-1 dotnet-sdk-2.1 -y