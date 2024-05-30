#!/bin/bash

# Verificar si se proporciona un argumento
if [ $# -ne 1 ]; then
    echo "Uso: $0 <archivo o directorio>"
    exit 1
fi

# Verificar si el archivo o directorio existe
if [ ! -e "$1" ]; then
    echo "El archivo o directorio '$1' no existe."
    exit 1
fi

# Obtener el tamaño del archivo o directorio
size=$(du -m "$1" | cut -f1)

echo "Tamaño de '$1': $size MB"

