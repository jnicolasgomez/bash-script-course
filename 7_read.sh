# !/bin/bash
# Programa para ejemplificar como capturar la informacion del usuario utilizando el comando read
# Autor: Nicolas G

option=0
backupName=""

echo "Programa Utilidades Postgres"
read -p "Ingresar una opcion: " option
read -p "Ingresar el nombre del archivo del backup: " backupName
echo "Opcion: $option , backupName:$backupName"









