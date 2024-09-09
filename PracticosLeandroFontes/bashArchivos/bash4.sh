#!/bin/bash
# Verifica si el usuario ha iniciado sesión en la tty1
if [ "$(tty)" = "/dev/tty1" ]; then
# Obtiene el nombre de usuario actual
username=$(whoami)
# Verifica si el nombre de usuario es igual a tu nombre
if [ "$username" = "eduardobaez24" ]; then
# Saluda con tu nombre completo
echo "¡Hola, Eduardo Baez! Bienvenido a la tty1."
fi
fi
