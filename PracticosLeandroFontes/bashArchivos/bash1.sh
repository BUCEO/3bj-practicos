#!/bin/bash
if [ $# -eq 0 ]; then
echo "Uso: $0 <file_or_directory>"
exit 1
fi
# Verifica si el argumento es un archivo
if [ -f "$1" ]; then
echo "$1 es un archivo."
exit 0
fi
# Verifica si el argumento es un directorio
if [ -d "$1" ]; then
echo "$1 es un directorio."
exit 0
fi
# Si no es ni archivo ni directorio, muestra un mensaje de error
echo "$1 does not exist."
exit 1