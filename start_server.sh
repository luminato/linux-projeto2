#!/bin/bash

echo 'Atualizando servidor...'

apt-get update -y
apt-get upgrade -y

echo 'Instalando apache...'

apt-get install apache2 -y

echo 'Instalando unzip...'

apt-get install unzip -y

echo 'Baixando arquivos...'

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo 'Descompactando e copiando arquivos baixados...'

unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo 'iniciando servidor apache...'

systemctl start apache2

echo 'Configurações finalizadas com sucesso!'
