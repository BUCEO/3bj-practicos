#!/bin/bash

nombre_completo="Leandro de los Santos"

if [ $(tty) == "/dev/tty1" ]; then
    echo "Hola $nombre_completo"
fi
