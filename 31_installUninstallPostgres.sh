#!/bin/bash
# programa que permite manejar las utilidades de Postgres
# Autor: Nicolas G

opcion=0

#Funcion para instala postgres
instalar_postgres () {
    echo -e "\n Verificar instalacion de postgres ..."
    verifyInstall=$(which psql)
    if [ $? -eq 0 ]; then
        echo -e "\n Postgres ya se encuentra instalado en el equipo"
    else
        read -s -p "Ingresar contrasena sudo:" password
        read -s -p "Ingresar contrasena utilizada en postgres" passwordPostgres
        echo "$password" | sudo -S apt update
        echo "$password" | sudo -S apt-get -y install postgresql postgresql-contrib
        sudo -u postgres psql -c "ALTER TABLE postgres WITH PASSWORD '{passworPostgres}';"
        echo "$password" | sudo -S systemctl enable postgresql.service
        echo "$password" | sudo -S systemctl start postgresql.service
    fi
    read -n 1 -s -r -p "PRESIONE [ENTER] para continuar....."
}

# Funcion para desinstalar postgres
desinstalar_postgres () {
    echo "Desinstalar postgres...."
    read -s -p "Ingresar contrasena sudo:" password
    echo -e "\n"
    echo "$password" | sudo -S systemctl stop postgresql.service
    echo "$password" | sudo -S apt-get -y --purge  remove postgresql\*
    echo "$password" | sudo -S rm -r /etc/postgresql
    echo "$password" | sudo -S rm -r /etc/postgresql-common
    echo "$password" | sudo -S rm -r /var/lib/postgresql
    echo "$password" | sudo -S userdel -r postgres
    echo "$password" | sudo -S groupdel postgresql
    read -n 1 -s -r -p "PRESIONE [ENTER] para continuar....."

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

