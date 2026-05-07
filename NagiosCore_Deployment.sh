#!/bin/bash
# ==============================================================================
# Script de despliegue de Nagios Core y Plugins para Blue Team Home Lab
# Autor: Pablo Pérez García
# ==============================================================================

# 1. Actualizar paquetes del sistema
echo "[*] Actualizando repositorios y el sistema..."
sudo apt update && sudo apt upgrade -y

# 2. Instalar dependencias necesarias (Apache, PHP, compiladores)
echo "[*] Instalando dependencias..."
sudo apt install -y autoconf gcc make wget unzip apache2 php \
    libapache2-mod-php build-essential libgd-dev

# 3. Crear usuario y grupo para Nagios
echo "[*] Configurando usuarios y grupos del sistema..."
sudo useradd nagios
sudo groupadd nagcmd
sudo usermod -a -G nagcmd nagios
sudo usermod -a -G nagcmd www-data

# 4. Descargar y compilar Nagios Core
echo "[*] Descargando Nagios Core 4.4.14..."
cd /tmp
wget https://assets.nagios.com/downloads/nagioscore/releases/nagios-4.4.14.tar.gz
tar -xvzf nagios-4.4.14.tar.gz
cd nagios-4.4.14

echo "[*] Compilando e instalando Nagios Core..."
./configure --with-command-group=nagcmd
make all
sudo make install
sudo make install-init
sudo make install-commandmode
sudo make install-config
sudo make install-webconf

# 5. Configurar usuario para interfaz web
# NOTA: El comando htpasswd solicitará por pantalla que introduzcas una contraseña
echo "[*] Configurando credenciales de la interfaz web (nagiosadmin)..."
sudo htpasswd -c /usr/local/nagios/etc/htpasswd.users nagiosadmin

# 6. Habilitar módulos CGI en Apache y reiniciar
echo "[*] Habilitando módulos de Apache..."
sudo a2enmod cgi
sudo systemctl restart apache2

# 7. Descargar e instalar plugins de Nagios
echo "[*] Descargando Nagios Plugins 2.3.3..."
cd /tmp
wget https://nagios-plugins.org/download/nagios-plugins-2.3.3.tar.gz
tar -xvzf nagios-plugins-2.3.3.tar.gz
cd nagios-plugins-2.3.3

echo "[*] Compilando e instalando plugins..."
./configure --with-nagios-user=nagios --with-nagios-group=nagios
make
sudo make install

# 8. Iniciar y habilitar servicio Nagios
echo "[*] Iniciando el servicio Nagios..."
sudo systemctl enable nagios
sudo systemctl start nagios

echo "[+] Despliegue de Nagios completado con éxito."
echo "[+] Puedes acceder a la interfaz web en: http://192.168.1.5/nagios"
