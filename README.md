# 🛡️ Diseño e Implementación de Red Segura para PYME (Blue Team Home Lab)

**Autor:** Pablo Pérez  
**Titulación:** CFGS Administración de Sistemas Informáticos en Red (ASIR)  
**Calificación:** 8  
**Fecha:** Diciembre 2025  

## 📝 Descripción del Proyecto
Este repositorio contiene un resumen de mi Trabajo de Fin de Grado (TFG) enfocado en una fusión entre Blue Team e Infraestructura. El mismo consiste en el diseño, despliegue y validación de una infraestructura de red segura orientada a una PYME. 

El objetivo principal ha sido democratizar el uso de tecnologías de ciberseguridad utilizando software de código abierto, implementando protección perimetral, un sistema de detección de intrusos y monitorización activa, sumado a un plan de concienciación en ciberseguridad para empleados.

## 🛠️ Tecnologías y Herramientas Utilizadas

**Arquitectura y Virtualización**
![Cisco Packet Tracer](https://img.shields.io/badge/Cisco_Packet_Tracer-%231BA0D7.svg?style=for-the-badge&logo=cisco&logoColor=white)
![VirtualBox](https://img.shields.io/badge/VirtualBox-%23183A61.svg?style=for-the-badge&logo=virtualbox&logoColor=white)

**Seguridad y Monitorización**
![pfSense](https://img.shields.io/badge/pfSense-%23000000.svg?style=for-the-badge&logo=pfsense&logoColor=white)
![Snort](https://img.shields.io/badge/Snort-FF6600?style=for-the-badge&logo=snort&logoColor=white)
![Nagios](https://img.shields.io/badge/Nagios-2C2C2C?style=for-the-badge&logo=nagios&logoColor=white)

**Sistemas, SO y Scripting**
![Windows Server 2022](https://img.shields.io/badge/Windows_Server_2022-%230078D6.svg?style=for-the-badge&logo=windows&logoColor=white)
![Ubuntu Server](https://img.shields.io/badge/Ubuntu_Server-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)
![GNU Bash](https://img.shields.io/badge/GNU%20Bash-4EAA25?style=for-the-badge&logo=GNU%20Bash&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)

## 🏗️ Arquitectura de la Red

### 🌐 Topología de Red
Diseño de la topología mediante **Cisco Packet Tracer**:

<img src="https://github.com/papgar92/TFG-Arquitectura-Defensiva---Blue-Team/blob/Resources/DiagramaCisco.jpg?raw=true" alt="Diagrama Cisco" width="100%" />

La red sigue una topología de estrella extendida segmentada en dos áreas principales:
* **WAN (192.168.3.0/24):** Salida a internet gestionada mediante DHCP.
* **LAN (192.168.1.0/24):** Red interna protegida por el firewall, donde residen las estaciones de trabajo y los servidores.

## 🚀 Implementación Técnica (Fases del Laboratorio)

0. **Virtualización de la Infraestructura:** Despliegue de **VirtualBox** como hipervisor para alojar las máquinas virtuales, simulando la infraestructura física con sus respectivas interfaces de red y asignación de recursos. 
1. **Seguridad Perimetral y Hardening:** Despliegue de **pfSense** como router lógico y firewall. Configuración de reglas NAT, bloqueo de puertos críticos (SMB, RDP, FTP), restricción de tráfico web malicioso/inseguro y fortificación (*hardening*) del acceso a los equipos de red.
2. **Directorio Activo:** Configuración de **Windows Server 2022** como controlador de dominio (`red.pyme`). Integración de terminales Windows 10 y sistemas Linux en entornos heterogéneos mediante protocolos SMB y Kerberos.
3. **Sistema de Detección de Intrusos (IDS):** Implementación de **Snort** en **Ubuntu Server** mediante scripts de automatización Bash, configurado con reglas locales y comunitarias para la detección en tiempo real de escaneos de red, fuerza bruta e inyecciones SQL.
4. **Monitorización (NOC):** Compilación e instalación desde código fuente de **Nagios Core** en **Ubuntu Server** para la supervisión de servicios, rendimiento y disponibilidad de los recursos corporativos.

## 👥 Factor Humano: Concienciación
Como complemento a la seguridad de hardware/software, el proyecto incluye un **programa de formación en ciberseguridad** para empleados. Se adjunta material didáctico diseñado para prevenir ataques de ingeniería social (Phishing, Smishing).

## 📂 Archivos y Código en este repositorio

### ⚙️ Códigos y Scripts (Recomendado)
Para ver el detalle técnico del despliegue, visita el branch **[`Config-files`](https://github.com/papgar92/TFG-Arquitectura-Defensiva---Blue-Team/tree/Config-files)**, donde encontrarás:
* **Configuraciones de Red (Cisco IOS):** Hardening de switches, Port Security, segmentación VLAN y reglas del Firewall.
* **Scripts Bash:** Despliegue semi-automatizado y compilación de Snort (IDS) y Nagios Core.

### 📚 Documentación y Recursos
* [`Memoria_TFG.pdf`](https://drive.google.com/file/d/1ygLtmTYxONglrcKP8YnSM4oEUYcFhf-Z/view?usp=sharing): Documentación técnica completa y manuales de instalación/usuario.
* [`Presentacion_Ciberseguridad.pptx`](https://docs.google.com/presentation/d/1s0kaBFc0ZRwWM_u9rbKc2OjYTsw-AaIy/edit?usp=sharing&ouid=113796822556962696851&rtpof=true&sd=true): Material de formación en ciberseguridad para empleados.
* [`Topologia_Red.pkt`](https://github.com/papgar92/TFG-Arquitectura-Defensiva---Blue-Team/raw/Resources/ASIR_Proyecto_3.0.pkt): Archivo de simulación de Cisco Packet Tracer.

---
*Este proyecto fue desarrollado en un entorno virtualizado controlado simulando condiciones y ataques reales para validar la robustez de las configuraciones aplicadas.*
