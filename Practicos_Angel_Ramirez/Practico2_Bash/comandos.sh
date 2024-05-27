if [ $# -eq 0 ]; then
    echo "Uso: $0 <comando>"
    exit 1
fi
comando=$1
if ! [ -x "$(command -v $comando)" ]; then
  echo "Error: El comando '$comando' no está instalado, no es ejecutable o no existe." >&2
  exit 1
fi
info_comando=$(man $comando)
echo "Información del comando '$comando':"
echo "$info_comando"

