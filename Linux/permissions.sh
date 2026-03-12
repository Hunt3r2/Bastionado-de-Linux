#!/bin/bash

echo "Buscando archivos con permisos inseguros..."

find / -type f -perm 777 2>/dev/null