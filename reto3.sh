# !/bin/bash
# Programa para ejemplificar el uso de condicionales
# Autor: Nicolas G


echo "Programa Solicitar informacion"
# Acepta informacion de un solo caracter
read -n1 -p "Ingresar un numero del 1 al 5: " opcion
echo -e "\n"

if [ $opcion -eq 1 ]; then
    echo "Ingresaste el numero 1"
elif [ $opcion -eq 2 ]; then
    read -p "Ingresa la palabra hola:" palabra
    if [ "$palabra" = "hola" ]; then
        echo "Muy bien"
    else
        echo "La palabra $palabra no es igual a hola"
    fi
elif [ $opcion -eq 3 ]; then
    read -p "Ingresa el nombre de un archivo: " archivo
    if [ -e $archivo ]; then
        echo "El archivo $archivo existe"
    else
        echo "El archivo no existe"
    fi
elif [ $opcion -eq 4 ]; then
    read -p "Ingresa el nombre de un archivo: " archivo
    if [ -r $archivo ]; then
        echo "El archivo $archivo puede ser leido"
    else
        echo "El archivo no puede ser leido"
    fi
elif [ $opcion -eq 5 ]; then
    read -p "Ingresa el nombre de un archivo: " archivo
    if [ -x $archivo ]; then
        echo "El archivo $archivo puede ser ejecutado"
    else
        echo "El archivo no puede ser ejecutado"
    fi
else
    echo "ingresaste un numero no valido"
fi








