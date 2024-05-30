#!/bin/bash

while true; do
    fecha=$(date +"%Y-%m-%d_%H-%M-%S")
    tar -czf "backup-$fecha.tar.gz" /home/myusuario
    sleep 300
done
