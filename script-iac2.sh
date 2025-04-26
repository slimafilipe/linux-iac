#!/bin/bash

echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y
echo "Baixando Apache..."
apt-get install apache2 -y
echo "Baixando unzip..."
apt-get install unzip -y
echo "Acessando diretório /tmp"
cd /tmp
echo "Baixando arquivo do repositório remoto..."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "Descompactando arquivo..."
unzip main.zip
echo "Acessando diretório do arquivo descompactado..."
cd linux-site-dio-main
echo "Copiando todos os arquivos..."
cp -R * /var/www/html/
