 size=$( du -ms "$1" | cut -f1  )
echo "el tamaño es de $size MB"
