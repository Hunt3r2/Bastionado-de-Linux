# Linux Hardening Toolkit

Toolkit de herramientas para bastionar sistemas Linux.

## Herramientas

auto_updates.sh
Actualiza el sistema e instala actualizaciones automáticas.

fail2ban.sh
Protege contra ataques de fuerza bruta.

firewall.sh
Configura firewall con UFW.

hardening_ssh.sh
Desactiva login root y autenticación por contraseña.

permissions.sh
Detecta archivos con permisos inseguros.

open_ports.sh
Lista puertos abiertos del sistema.

services.sh
Desactiva servicios innecesarios.

hardening_kernel.sh
Aplica configuraciones de seguridad del kernel.

## Uso

```bash
sudo bash firewall.sh
```

### Extra

Como extra, se añadió un pequeño script para windows que desactiva servicios inseguros

- disable_services.ps1
  - Desactiva servicios inseguros