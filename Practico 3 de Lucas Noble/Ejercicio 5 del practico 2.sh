#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Uso: $0 <comando>"
    exit 1
fi

comando="$1"

# Verificar si el comando existe
if ! command -v "$comando" &> /dev/null; then
    echo "El comando '$comando' no existe en el sistema."
    exit 1
fi

# Obtener la ubicación del comando
ubicacion=$(command -v "$comando")

# Obtener la descripción del comando
descripcion=$(whatis "$comando")

# Mostrar la información del comando
echo "Información del comando: $comando"
echo "Ubicación: $ubicacion"
echo "Descripción: $descripcion"
