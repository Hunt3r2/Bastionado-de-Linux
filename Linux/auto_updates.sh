#!/bin/bash

echo "Actualizando sistema..."

apt update
apt upgrade -y
apt install unattended-upgrades

echo "Sistema actualizado"