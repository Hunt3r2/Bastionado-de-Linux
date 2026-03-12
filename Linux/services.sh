#!/bin/bash

echo "Desactivando servicios innecesarios..."

systemctl disable telnet
systemctl disable ftp
systemctl disable avahi-daemon

echo "Servicios desactivados"