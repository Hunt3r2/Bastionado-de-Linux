#!/bin/bash

echo "[+] Instalando Fail2Ban..."

if ! command -v fail2ban-client &> /dev/null
then
    apt update
    apt install fail2ban -y
fi

# Verificar instalación
if systemctl list-unit-files | grep -q fail2ban
then
    systemctl enable fail2ban
    systemctl start fail2ban
    echo "[+] Fail2Ban activo correctamente"
else
    echo "[!] Error: Fail2Ban no se ha instalado correctamente"
fi