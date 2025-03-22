mkdir -p backups

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="/backups/backup_${TIMESTAMP}.sql"

echo "Realizando backup en $BACKUP_FILE..."
docker exec mysqlDB2 mysqldump -u root -p1234 mysqlD2 > "backups/backup_${TIMESTAMP}.sql"

if [ -f backups/backup_$TIMESTAMP.sql ]; then
    echo "Backup creado correctamente: backups/backup_$TIMESTAMP.sql"
else
    echo "ERROR: No se generó el backup"
    exit 1
fi