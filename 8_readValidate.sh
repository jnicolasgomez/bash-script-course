# !/bin/bash
# Programa para ejemplificar como capturar la informacion del usuario y validarla
# Autor: Nicolas G

option=0
backupName=""
clave=""

echo "Programa Utilidades Postgres"
# Acepta informacion de un solo caracter
read -n1 -p "Ingresar una opcion: " option
echo -e "\n"

read -n10 -p "Ingresar el nombre del archivo del backup: " backupName
echo -e "\n"
echo "Opcion: $option , backupName:$backupName"
read -s -p "Clave: " clave
echo "Clave: $clave"








