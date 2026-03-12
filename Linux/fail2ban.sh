#!/bin/bash

echo "[+] Instalando Fail2Ban..."

apt install fail2ban -y

systemctl enable fail2ban
systemctl start fail2ban

echo "[+] Fail2Ban activo"