# Verificador de Conectividad de Red y Puertos

Este es un pequeño script Bash que verifica si una dirección IP responde al ping y si un puerto específico está abierto (usando `nc` - netcat). Si ocurre un error, lo registra en un archivo de log.

## 🚀 ¿Para qué sirve?

- Verificar si un host remoto (como un servidor o un DNS) está activo.
- Probar si un servicio como SSH, HTTP o DNS está aceptando conexiones.
- Registrar fallos en un archivo `errores.log` para revisión posterior.

## 📦 Requisitos

Este script usa herramientas comunes de Linux:
- `bash`
- `ping`
- `nc` (netcat)

Puedes instalar `netcat` 
Puedes cambiar la IP y el puerto editando estas líneas del script:
ip_dominio="8.8.8.8"
puerto=53
