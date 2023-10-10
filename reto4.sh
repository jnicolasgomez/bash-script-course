#!/bin/bash
# programa que permite obtener informacion de la maquina
# Autor: Nicolas G

opcion=0

while :
do
    #LImpar la pantalla
    clear
    #desplegar el menu de opciones
    echo "-----------------------------------------"
    echo "PINFO - Programa para obtener informacion"
    echo "-----------------------------------------"
    echo "               MENU PRINCIPAL            "
    echo "1. Procesos Actuales"
    echo "2. Memoria disponible"
    echo "3. Espacio en Disco"
    echo "4. Informacion de Red"
    echo "5. Variables de Entorno configuradas"
    echo "6. Informacion programa"
    echo "7. Backup informacion"
    echo "8. Salir"

    #Leer los datos del usuario
    read -p "Ingrese una opcion [1-8]: " opcion

    #Validar la opcion ingresada
    case $opcion in
        1)
            echo "Opcion presionada: $opcion Proceso actuales"
            sleep 3
            ;;
        2) 
            echo "Opcion presionada: $opcion Memoria disponible"
            sleep 3
            ;;
        3) 
            echo "Opcion presionada: $opcion Espacio en disco"
            sleep 3
            ;;

        4) 
            echo "Opcion presionada: $opcion Informacion de Red"
            sleep 3
            ;;

        5) 
            echo "Opcion presionada: $opcion Variables de entorno"
            sleep 3
            ;;

        6) 
            echo "Opcion presionada: $opcion Informacion Programa"
            sleep 3
            ;;
        
        7) 
            echo "Opcion presionada: $opcion Backup informacion"
            sleep 3
            ;;
        8)
            echo "Salir del programa"
            exit 0
            ;;
    esac
done

