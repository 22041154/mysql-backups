#!/bin/bash

# Ruta donde se guardarán los backups
BACKUP_DIR="backups"

# Nombre del archivo con la fecha y hora actual
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="$BACKUP_DIR/backup_$TIMESTAMP.sql"

# Credenciales de la base de datos
DB_USER="root"
DB_PASSWORD="1234"
DB_NAME="mysqlD2"
DB_HOST="127.0.0.1"
DB_PORT="3307"

# Crear la carpeta de backups si no existe
mkdir -p "$BACKUP_DIR"

# Ejecutar el backup
echo "Realizando backup en $BACKUP_FILE..."
mysqldump -h $DB_HOST -P $DB_PORT -u $DB_USER -p$DB_PASSWORD $DB_NAME > "$BACKUP_FILE"

# Verificar si el backup se creó correctamente
if [ -f "$BACKUP_FILE" ]; then
    echo " Backup generado correctamente: $BACKUP_FILE"
else
    echo " ERROR: No se generó el backup"
    exit 1
fi
