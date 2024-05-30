#!/bin/bash

mostrar_ayuda() {
    echo "Uso: $0 opcion"
    echo "Opciones disponibles:"
    echo "1. opcion1 - Descripción de la opción 1"
    echo "2. opcion2 - Descripción de la opción 2"

}

opcion1() {
    echo "Sugerencia para ejecutar 1"

}

opcion2() {
    echo "Sugerencia para ejecutar 2"

}

# Validar la cantidad de argumentos
if [ $# -ne 1 ]; then
    mostrar_ayuda
    exit 1
fi

opcion="$1"
case "$opcion" in
    opcion1)
        opcion1
        ;;
    opcion2)
        opcion2
        ;;
    *)
        echo "Opción no válida."
        mostrar_ayuda
        exit 1
        ;;
esac