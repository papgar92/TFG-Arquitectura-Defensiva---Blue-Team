# ⚙️ Archivos de Configuración y Scripts de Despliegue

Bienvenido a la rama `config files`. Aquí se almacenan las configuraciones en texto plano de los equipos de red y los scripts de automatización (Bash) utilizados para levantar la infraestructura del proyecto **Blue Team Home Lab**.

Estos archivos demuestran la aplicación práctica de políticas de seguridad, segmentación de red y automatización en servidores Linux.

## 📂 Contenido del Directorio

### 🛡️ Seguridad y Red Perimetral
* **[`pfSense_config.cfg`](./pfSense_config.cfg)**: Configuración del router lógico/firewall perimetral. 
  * *Destacado:* Implementación de NAT, DHCP, reglas de filtrado de tráfico (ACLs) y *hardening* del dispositivo (cifrado de contraseñas, acceso exclusivo vía SSH con claves RSA).
* **[`Switch_Lan.cfg`](./Switch_Lan.cfg)**: Configuración del switch principal de la red local.
  * *Destacado:* Hardening de capa 2 mediante el apagado administrativo de puertos inactivos (`shutdown`), configuración de VLANs para gestión y segmentación, y aplicación de **Port Security** (MAC sticky) para evitar conexiones no autorizadas.

### 🐧 Automatización y Despliegue (Linux)
* **[`Snort_Deployment.sh`](./Snort_Deployment.sh)**: Script en Bash para la instalación semi-automatizada del Sistema de Detección de Intrusos (IDS).
  * *Destacado:* Preparación del sistema, integración de las *Community Rules* de Snort y generación de backups automáticos de las configuraciones por defecto.
* **[`NagiosCore_Deployment.sh`](./NagiosCore_Deployment.sh)**: Script en Bash para el despliegue del nodo de monitorización (NOC).
  * *Destacado:* Compilación de la herramienta desde el código fuente (`make all`, `make install`), configuración del servidor web Apache con módulos CGI, instalación de plugins y securización del panel web mediante `.htpasswd`.

---
*Nota: Los scripts de despliegue están diseñados para ser ejecutados en entornos basados en Ubuntu/Debian, asumiendo privilegios de superusuario (`sudo`).*
