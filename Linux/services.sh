#!/bin/bash

echo "[+] Desactivando servicios innecesarios..."

SERVICES=("telnet" "vsftpd" "proftpd" "pure-ftpd" "avahi-daemon")

for service in "${SERVICES[@]}"
do
    if systemctl list-unit-files | grep -q "$service"
    then
        if systemctl disable "$service" 2>/dev/null
        then
            echo "[+] $service desactivado"
        else
            echo "[!] $service existe pero no se pudo desactivar"
        fi
    else
        echo "[!] $service no está instalado o usa otro nombre"
    fi
done

echo "[+] Proceso completado"