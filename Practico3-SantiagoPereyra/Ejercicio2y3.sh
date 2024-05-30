
#!/bin/bash

if [ -z "$1" ]; then
    echo "Se necesitan argumentos, ingrese un directorio o archivo para medir sus MB,"
    exit 1
fi


if [ -d "$1" ]; then
    echo "$1 es un directorio y su tamaño es:"
    du -sh --block-size=1MB "$1"
else
     if [ -f "$1" ]; then
        echo "$1 es un archivo y su tamaño es:"
        du -h --block-size=1MB "$1"
    else
        echo " No es un archivo ni un directorio válido."
    fi
fi

