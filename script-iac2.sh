#!/bin/bash

echo "Atualizando servidor..."

apt-get update
apt-get upgrade -y

echo "Instalando apache2 e unzip..."
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando aplicação..."

cd /temp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main

cp -R * /var/www/html/

echo "Finalizado!"
