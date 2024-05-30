#!/bin/bash

nomb="Joaquin Vila"

if [ $(tty) == "/dev/tty1" ]; then
    echo "Hola $nomb"
fi
