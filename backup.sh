TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="backup_$TIMESTAMP.sql"

docker exec mysqlDB2 mysqldump -u root -p'1234'

git add $BACKUP_FILE
git commit -m "Backup automático: $TIMESTAMP"
git push origin main