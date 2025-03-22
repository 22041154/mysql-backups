TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="/backups/backup_${TIMESTAMP}.sql"

echo "Realizando backup en $BACKUP_FILE..."
docker exec mysqlDB2 mysqldump -u root -p1234 mysqlD2 > "backups/backup_${TIMESTAMP}.sql"

echo "Backup completado."