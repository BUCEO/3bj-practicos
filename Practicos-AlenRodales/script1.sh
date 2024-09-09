#!/bin/bash

if [ $# -eq 0 ]; then
	  echo "Por favor, proporcione un archivo o directorio"
	    exit 1
fi


prueba="$1"

if [ -f "$prueba" ]; then
	  echo "$prueba Esto es un archivo."
  elif [ -d "$prueba" ]; then
	    echo "$prueba Esto es un directorio."
    else
	      echo "$prueba El archivo o directorio no existe."
fi
