#!/bin/bash

if [ -e "$1" ]; then
    size=$(du -m "$1" | cut -f1)
    echo "El tamaño de $1 es de $size MB."
else
    echo "El archivo o directorio $1 no existe."
fi
