#!/bin/bash

echo "Bastionando configuración SSH..."

sed -i 's/#PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config
sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config

systemctl restart ssh

echo "SSH bastionado correctamente"