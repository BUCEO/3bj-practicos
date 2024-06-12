#!/bin/bash
# Verifica si se proporcionó un argumento
if [ $# -eq 0 ]; then
echo "Usage: $0 <command>"
exit 1
fi
# Guarda el comando proporcionado como argumento
command=$1
# Verifica si el comando existe en el sistema
if ! command -v "$command" &> /dev/null; then
echo "Error: Comando '$command' no encontrado."
exit 1
fi
# Muestra la información del comando utilizando "man" si está disponible, de lo contrario, utiliza "whatis"
if man "$command" &> /dev/null; then
man "$command"
else
whatis "$command"
fi