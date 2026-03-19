#!/bin/bash

echo "[+] Aplicando hardening del kernel..."

CONFIGS=(
"net.ipv4.icmp_echo_ignore_broadcasts=1"
"net.ipv4.conf.all.rp_filter=1"
"net.ipv4.tcp_syncookies=1"
)

for conf in "${CONFIGS[@]}"; do
    key=$(echo $conf | cut -d= -f1)
    
    # Si existe → reemplazar
    if grep -q "^$key" /etc/sysctl.conf; then
        sed -i "s/^$key.*/$conf/" /etc/sysctl.conf
    else
        echo "$conf" >> /etc/sysctl.conf
    fi
done

# Aplicar cambios
sysctl -p

echo "[+] Hardening del kernel aplicado"
