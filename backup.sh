#!/bin/bash

# Crear la carpeta de backups si no existe y dar permisos
mkdir -p backups
chmod 777 backups

# Generar el backup dentro del contenedor
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
docker exec mysqlDB2 mysqldump -u root -p1234 mysqlD2 > backups/backup_$TIMESTAMP.sql

# Verificar si el archivo se generó correctamente
if [ -f backups/backup_$TIMESTAMP.sql ]; then
    echo "Backup creado correctamente: backups/backup_$TIMESTAMP.sql"
else
    echo "ERROR: No se generó el backup"
    exit 1
fi
