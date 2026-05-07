# 🛡️ Diseño e Implementación de Red Segura para PYME (Home Lab)

**Autor:** Pablo Pérez
**Titulación:** CFGS Administración de Sistemas Informáticos en Red (ASIR)  
**Calificación/Fecha:** 8 / Diciembre 2025  

## 📝 Descripción del Proyecto
Este repositorio contiene mi Trabajo de Fin de Grado (TFG), el cual consiste en el diseño, despliegue y validación de una infraestructura de red segura orientada a una PYME. 

El objetivo principal ha sido democratizar el uso de tecnologías de ciberseguridad utilizando software de código abierto, implementando protección perimetral , un sistema de detección de intrusos y monitorización activa, sumado a un plan de concienciación en ciberseguridad para empleados.

## 🛠️ Tecnologías y Herramientas Utilizadas

**Arquitectura y Virtualización**
![Cisco Packet Tracer](https://img.shields.io/badge/Cisco_Packet_Tracer-%231BA0D7.svg?style=for-the-badge&logo=cisco&logoColor=white)
![VirtualBox](https://img.shields.io/badge/VirtualBox-%23183A61.svg?style=for-the-badge&logo=virtualbox&logoColor=white)

**Seguridad y Monitorización**
![pfSense](https://img.shields.io/badge/pfSense-%23000000.svg?style=for-the-badge&logo=pfsense&logoColor=white)
![Snort](https://img.shields.io/badge/Snort-FF6600?style=for-the-badge&logo=snort&logoColor=white)
![Nagios](https://img.shields.io/badge/Nagios-2C2C2C?style=for-the-badge&logo=nagios&logoColor=white)

**Sistemas Operativos**
![Windows Server 2022](https://img.shields.io/badge/Windows_Server_2022-%230078D6.svg?style=for-the-badge&logo=windows&logoColor=white)
![Ubuntu Server](https://img.shields.io/badge/Ubuntu_Server-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)

## 🏗️ Arquitectura de la Red

<!--
*Puedes subir la imagen de tu diagrama de Cisco Packet Tracer (la que tienes en la página 13 de tu memoria) al repositorio y enlazarla aquí. Ejemplo:*
`![Topología de Red](ruta-de-la-imagen-en-tu-repo.png)`
--!>
La red sigue una topología de estrella extendida segmentada en dos áreas principales:
* **WAN (192.168.3.0/24):** Salida a internet gestionada mediante DHCP.
* **LAN (192.168.1.0/24):** Red interna protegida por el firewall, donde residen las estaciones de trabajo y los servidores.

## 🚀 Implementación Técnica (Fases del Laboratorio)

1. **Seguridad Perimetral:** Despliegue de **pfSense** como router lógico y firewall. Configuración de reglas NAT, bloqueo de puertos críticos (SMB, RDP, FTP) y restricción de tráfico web malicioso/inseguro.
2. **Directorio Activo:** Configuración de **Windows Server 2022** como controlador de dominio (`red.pyme`). Integración de terminales Windows 10 y sistemas Linux en entornos heterogéneos mediante protocolos SMB y Kerberos.
3. **Sistema de Detección de Intrusos (IDS):** Implementación de **Snort** en **Ubuntu Server** configurado con reglas locales y comunitarias para la detección en tiempo real de escaneos de red, fuerza bruta e inyecciones SQL.
4. **Monitorización (NOC):** Compilación e instalación de **Nagios Core** para la supervisión de servicios, rendimiento y disponibilidad de los recursos de la red corporativa.

## 👥 Factor Humano: Concienciación
Como complemento a la seguridad de hardware/software, el proyecto incluye un **programa de formación en ciberseguridad** para empleados. Se adjunta material didáctico diseñado para prevenir ataques de ingeniería social (Phishing, Smishing).

## 📂 Archivos en este repositorio
* `Memoria_TFG_Pablo_Perez.pdf`: Documentación técnica completa y manuales de instalación/usuario.
* `Presentacion_Ciberseguridad.pptx`: Material de formación para empleados.
* *(Opcional si lo tienes)* `Topologia_Red.pkt`: Archivo de simulación de Cisco Packet Tracer.

---
*Este proyecto fue desarrollado en un entorno virtualizado controlado simulando condiciones y ataques reales para validar la robustez de las configuraciones aplicadas.*
