#!/bin/bash

# Aqui vc pode usar consegui acessar outros repositorios para fazer a instalação, lembre-se
# sua senha nao pode ter "@" por causa da sintaxe do httpproxy 

#export http_proxy="http://[user]:[senha]@[ipproxy]:2000"
#export https_proxy="https://[user]:[senha]@[ipproxy]:2000"

# Atualiza a lista de pacotes
sudo apt update -y
sudo apt upgrade -y

# Instala o OpenSSH Server (SSH)
sudo apt install -y openssh-server

# Instala o pacote de ferramentas de rede (net-tools)
sudo apt install -y net-tools

# Instala o agente Zabbix  server = "(ip zabbix)"
# sudo nano /etc/zabbix/zabi...conf (o arquivo para apontar o servidor)
sudo apt install -y zabbix-agent

# Instala o SNMP
sudo apt install -y snmp

# Reinicia o serviço Zabbix Agent para aplicar as alterações 10.24.125.2
sudo systemctl restart zabbix-agent


echo "Instalado"

#Para instalar a aba de ususarios graficos (SOMENTE SE FOR UMA INTERFACE GRAFICA XFCE)
#sudo apt install gnome-system-tools

#Para instalar wine com interface grafica 
sudo apt install q4wine

#Para instalar o iced tea0 next (tela preta)
sudo apt install icedtea-netx

#Para instalar rdp para usar com remmina 
#sudo apt install xrdp

# Como nmo linux (exceto ubuntu) só pode ter um usuario logado ao mesmo tempo usamos esse comando para conseguir usar mais de um ao mesmo tempo
# Se for outra interface grafica cinnamon, mate... trocar pelo xfce4

#echo env -u SESSION_MANAGER -u DBUS_SESSION_BUS_ADDRESS xfce4-session>~/.xsession
