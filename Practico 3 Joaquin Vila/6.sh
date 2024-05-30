#!/bin/bash

# Directorio de trabajo
working_dir="/home/myusuario"

# Directorio donde se almacenarán los backups
backup_dir="/ruta/donde/guardar/backups"

while true; do
    # Genera el nombre del archivo de backup
    backup_file="$backup_dir/backup-$(date +'%Y-%m-%d_%H-%M-%S').tar.gz"
    
    # Crea el backup comprimido en formato TAR-GZIP
    tar -czf "$backup_file" "$working_dir"
    
    echo "Backup creado: $backup_file"
    
    # Espera 5 minutos
    sleep 300
done

