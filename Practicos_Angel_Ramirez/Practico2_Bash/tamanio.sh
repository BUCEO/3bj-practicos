size=$(du -sB1 "$1" | cut -f1)
size_mb=$(echo "scale=2; $size / (1024 * 1024)" | bc)
echo "El tamaño de $1 es: $size_mb MB"
