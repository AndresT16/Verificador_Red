#!/bin/bash

log="errores.log"

touch "$log"

echo "Iniciado el $(date)" >> "$log"

if ping -c4 8.8.8.8 ; then
    echo "exito"
else
    echo "fallo" >> "$log"
fi

ip_dominio="8.8.8.8"
puerto=53

if nc -z -w3 "$ip_dominio" "$puerto"; then
    echo "$(date) Puerto $puerto abierto en $ip_dominio"
else
    echo "$(date) ERROR: No se pudo conectar a $ip_dominio:$puerto" >> "$log"
fi
