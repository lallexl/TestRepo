#!/bin/bash

curl -fsSL get.docker.com -o get-docker.sh && sh get-docker.sh #ставим Docker на голую ОС
systemctl restart docker.service && systemctl enable docker.service
curl -L "https://github.com/docker/compose/releases/download/1.28.6/docker-compose-$(uname -s)-$(uname -m)" -o /usr/bin/docker-compose #Ставим docker-compose на любую ОСь из поддерживаемых
chmod +x /usr/bin/docker-compose #Делаем исполняемым
docker --version && docker-compose --version # Проверяем версии
