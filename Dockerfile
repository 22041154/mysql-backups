# Usar la imagen oficial de MySQL
FROM mysql:latest

# Definir variables de entorno para MySQL
ENV MYSQL_ROOT_PASSWORD=1234
ENV MYSQL_DATABASE=mysqlD2

# Exponer el puerto de MySQL
EXPOSE 3306
