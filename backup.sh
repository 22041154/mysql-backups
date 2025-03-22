#!/bin/bash

# Crear la carpeta backups si no existe y dar permisos
mkdir -p backups
chmod 777 backups

# Nombre del archivo de backup
BACKUP_FILE="backups/backup_$(date +%Y-%m-%d_%H-%M-%S).sql"

# Ejecutar el backup
echo "Realizando backup en $BACKUP_FILE..."
mysqldump -h 127.0.0.1 -P 3307 -u root -p1234 mysqlD2 > "$BACKUP_FILE"

# Verificar si el backup se generó correctamente
if [ -f "$BACKUP_FILE" ]; then
    echo "Backup generado correctamente: $BACKUP_FILE"
else
    echo "ERROR: No se generó el backup"
    exit 1
fi
