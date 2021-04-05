#!/bin/bash

curl -fsSL get.docker.com -o get-docker.sh && sh get-docker.sh #ставим Docker на голую ОС
systemctl restart docker.service && systemctl enable docker.service
curl -L "https://github.com/docker/compose/releases/download/1.28.6/docker-compose-$(uname -s)-$(uname -m)" -o /usr/bin/docker-compose #Ставим docker-compose на любую ОСь из поддерживаемых
chmod +x /usr/bin/docker-compose #Делаем исполняемым
docker --version && docker-compose --version # Проверяем версии

YUM_CMD=$(which yum)
APT_GET_CMD=$(which apt-get)
YUM_PACKAGE_NAME=git

if [[ ! -z $YUM_CMD ]]; then
    yum install $YUM_PACKAGE_NAME
 elif [[ ! -z $APT_GET_CMD ]]; then
    apt-get $DEB_PACKAGE_NAME
 else
    echo "error can't install package $PACKAGE"
    exit 1;
 fi

