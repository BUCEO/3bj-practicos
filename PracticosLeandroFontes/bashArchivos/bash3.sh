#!/bin/bash
# Función para mostrar el mensaje de ayuda
show_help() {
echo "Usage: $0 <file_or_directory>"
echo "Descripción: Este script calcula el tamaño de un archivo o directorio en MB."
echo "Ejemplo: $0 my_file.txt"
}
# Verifica si se proporcionó al menos un argumento
if [ $# -eq 0 ]; then
echo "Error: NO hay argumentos proporcionados."
echo "Por favor proporcione un archivo o directorio."
echo
show_help
exit 1
fi
# Verifica si se proporcionó más de un argumento
if [ $# -gt 1 ]; then
echo "Error: Demasiados argumentos proporcionados."
echo
show_help
exit 1
fi
# Verifica si el argumento es un archivo o directorio
if [ -e "$1" ]; then
size_kb=$(du -s "$1" | awk '{print $1}')
size_mb=$(echo "scale=2; $size_kb / 1024" | bc)
echo "Size of $1: $size_mb MB"
exit 0
else
echo "Error: $1 no existe."
exit 1
fi