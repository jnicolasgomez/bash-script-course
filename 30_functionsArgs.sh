#!/bin/bash
# programa que permite manejar las utilidades de Postgres
# Autor: Nicolas G

opcion=0

#Funcion para instala postgres
instalar_postgres () {
    echo "Instalar postgres..."
}

# Funcion para desinstalar postgres
desinstalar_postgres () {
    echo "Desinstalar postgres...."
}

# Funcion para sacar respaldo
sacar_respaldo () {
    echo "Sacar respaldo..."
    echo "Directorio backup: $1"
}

#Funcion para restaurar respaldo
restaurar_respaldo () {
    echo "Restaurar respaldo...."
    echo "Directorio respaldo: $1"
}

while :
do
    #LImpar la pantalla
    clear
    #desplegar el menu de opciones
    echo "-----------------------------------------"
    echo "PGUTIL - Programa de utilidad de postgres"
    echo "-----------------------------------------"
    echo "               MENU PRINCIPAL            "
    echo "1. Instalar postgres"
    echo "2. Desinstalar postgres"
    echo "3. Sacar un respaldo"
    echo "4. Restaurar respaldo"
    echo "5. Salir"

    #Leer los datos del usuario
    read -p "Ingrese una opcion [1-5]: " opcion

    #Validar la opcion ingresada
    case $opcion in
        1)
            instalar_postgres
            sleep 3
            ;;
        2) 
            desinstalar_postgres
            sleep 3
            ;;
        3) 
            read -p "Directorio Backup:" directorioBackup
            sacar_respaldo $directorioBackup
            sleep 3
            ;;

        4)
            
            read -p "Directorio Respaldo:" directorioRespaldo
            restaurar_respaldo $directorioRespaldo
            sleep 3
            ;;
        5)
            echo "Salir del programa"
            exit 0
            ;;
    esac
done

