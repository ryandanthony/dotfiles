 #!/usr/bin/env bash

if [ $(getent group docker) ]; then
  echo "docker group exists."
else
  echo "docker group does not exist."
    sudo addgroup --system docker
    sudo adduser $USER docker
    newgrp docker
    sudo snap disable docker
    sudo snap enable docker
fi
