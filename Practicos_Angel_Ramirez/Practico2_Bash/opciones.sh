if [ $# -eq 0 ]; then
    echo "Uso: $0 <archivo o directorio>"
    echo "Puedes probar con los siguientes scripts:"
    echo "- tamanio.sh: para obtener el tamaño en MB de un archivo o directorio."
    echo "- tipo.sh: para determinar si un parámetro es archivo, directorio o si no existe."
    exit 1
fi
