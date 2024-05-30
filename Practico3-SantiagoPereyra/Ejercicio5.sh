#!/bin/bash

url="https://www.monografias.com/trabajos34/el-trabajo/el-trabajo"

while true
do

    hora=$(date +"%H-%M-%S")

    nombre="backup-$hora.tar.gz"

    wget -r -np -nH --cut-dirs=2 "$url" -P /home/miusuario/temp
    tar -czf "$nombre" /home/tato/temp
    mv "$nombre_archivo" /home/tato/backups/
    rm -rf /home/tato/temp
    sleep 300
done
