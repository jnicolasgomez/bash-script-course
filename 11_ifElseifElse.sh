#!/bin/bash
#programa para ejempmlificar el uso de la sentencia de desicion if els if, elsee
# Autor: Nicolas G


notaClase=0
edad=0

echo " Ejemplo Sentencia if Else"

read -p "Indique cual es su edad:" edad
echo -e "\n"
if [ $edad -le 18 ]; then
    echo "La prersona es adolescente"
elif [ $edad -ge 19 ] &&  [ $edad -le 64 ]; then
    echo "La persona es adulta"
else
    echo "La persona es adulto mayor"
fi


