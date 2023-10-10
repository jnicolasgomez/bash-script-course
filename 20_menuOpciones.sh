#!/bin/bash
# programa que permite manejar las utilidades de Postgres
# Autor: Nicolas G

opcion=0

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
            echo "Instalar postgres......"
            sleep 3
            ;;
        2) echo "Desinstalar postgres......."
            sleep 3
            ;;
        3) echo "Sacar respaldo......."
            sleep 3
            ;;

        4) echo "Restaurar respaldo......."
            sleep 3
            ;;
        5)
            echo "Salir del programa"
            exit 0
            ;;
    esac
done

