#!/bin/bash

echo "==== Linux Security Toolkit ===="

echo "1. Bastionar SSH"
echo "2. Configurar Firewall"
echo "3. Auditoría de permisos"
echo "4. Ver puertos abiertos"
echo "5. Actualizar sistema"
echo "6. Instalar Fail2Ban"
echo "7. Desactivar servicios innecesarios"
echo "8. Hardening del kernel"
echo "9. Ejecutar TODO"

read -p "Selecciona una opción: " opt

case $opt in
  1) bash linux/hardening_ssh.sh ;;
  2) bash linux/firewall.sh ;;
  3) bash linux/permissions.sh ;;
  4) bash linux/open_ports.sh ;;
  5) bash linux/auto_updates.sh ;;
  6) bash linux/fail2ban.sh ;;
  7) bash linux/services.sh ;;
  8) bash linux/hardening_kernel.sh ;;
  9)
    echo "[+] Ejecutando hardening completo..."
    bash linux/auto_updates.sh
    bash linux/hardening_ssh.sh
    bash linux/firewall.sh
    bash linux/fail2ban.sh
    bash linux/services.sh
    bash linux/permissions.sh
    bash linux/open_ports.sh
    bash linux/hardening_kernel.sh
    ;;
  *) echo "Opción inválida" ;;
esac