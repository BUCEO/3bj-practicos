#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Uso: $0 <comando>"
else
    man "$1"
fi
