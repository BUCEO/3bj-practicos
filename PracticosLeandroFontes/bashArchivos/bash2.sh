#!/bin/bash
# Verifica si se proporcionó un argumento
if [ $# -eq 0 ]; then
echo "Uso: $0 <file_or_directory>"
exit 1
fi
# Verifica si el argumento es un archivo o directorio
if [ -e "$1" ]; then
size_kb=$(du -s "$1" | awk '{print $1}')
size_mb=$(echo "scale=2; $size_kb / 1024" | bc)
echo "Size of $1: $size_mb MB"
exit 0
else
echo "$1 no existe."
exit 1
fi