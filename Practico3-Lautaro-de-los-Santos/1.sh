#!/bin/bash

if [ -e "$1" ]; then
    if [ -f "$1" ]; then
        echo "$1 es un archivo."
    elif [ -d "$1" ]; then
        echo "$1 es un directorio."
    fi
else
    echo "El parámetro $1 no existe."
fi
