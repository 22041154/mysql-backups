# Usar la imagen oficial de MySQL
FROM mysql:latest

# Configurar variables de entorno para MySQL
ENV MYSQL_ROOT_PASSWORD=1234
ENV MYSQL_DATABASE=mysqlD2

# Crear directorio para backups dentro del contenedor
RUN mkdir -p /backups && chmod 777 /backups

# Exponer el puerto 3306 (interno de MySQL)
EXPOSE 3306
