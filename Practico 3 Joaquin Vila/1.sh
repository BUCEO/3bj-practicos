#!/bin/bash

# Verifica si se pasó exactamente un argumento
if [ $# -ne 1 ]; then
    echo "Uso: $0 <archivo o directorio>"
    exit 1
fi

# Verifica si el parámetro pasado es un archivo
if [ -f "$1" ]; then
    echo "$1 es un archivo."
# Verifica si el parámetro pasado es un directorio
elif [ -d "$1" ]; then
    echo "$1 es un directorio."
# Si no es ni un archivo ni un directorio, entonces el parámetro no existe
else
    echo "$1 no existe."
fi

