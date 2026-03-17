#!/bin/bash

echo "[+] Configurando firewall..."

# Instalar UFW si no está
if ! command -v ufw &> /dev/null
then
    echo "[!] UFW no encontrado, instalando..."
    apt update
    apt install ufw -y
fi

ufw default deny incoming
ufw default allow outgoing

ufw allow 22
ufw allow 80
ufw allow 443

ufw enable

echo "[+] Firewall configurado correctamente"