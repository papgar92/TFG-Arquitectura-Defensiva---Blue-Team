#!/bin/bash
# ==============================================================================
# Script de despliegue básico de Snort (IDS) para Blue Team Home Lab
# Autor: Pablo Pérez García
# ==============================================================================

# 1. Actualizar repositorios y paquetes del sistema
sudo apt update
sudo apt upgrade -y

# 2. Instalar Snort
# NOTA: Durante el proceso interactivo pedirá la interfaz a monitorizar (enp0s3) 
# y la red local (192.168.1.0/24)
sudo apt install snort -y

# 3. Backup de seguridad del archivo de configuración original
sudo cp /etc/snort/snort.conf /etc/snort/snort.conf.bak

# 4. Descargar y descomprimir las reglas de la comunidad (Community Rules)
cd /tmp
wget https://www.snort.org/downloads/community/snort3-community-rules.tar.gz
sudo tar -xvzf snort3-community-rules.tar.gz -C /etc/snort/rules/

# 5. Edición de la configuración
# Se edita el archivo de configuración para apuntar el DNS a nuestro Windows Server (192.168.1.2)
# y habilitar las reglas locales y de la comunidad.
echo "Instalación base completada. Proceda a editar /etc/snort/snort.conf"
# sudo nano /etc/snort/snort.conf
