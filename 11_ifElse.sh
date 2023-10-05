#!/bin/bash
#programa para ejempmlificar el uso de la sentencia de desicion if else
# Autor: Nicolas G


notaClase=0
edad=0

echo " Ejemplo Sentencia if Else"
read -n1 -p "Indique cual es su nota (1-9)" notaClase
echo -e "\n"
if (( $notaClase >= 7 )); then
    echo "El alumno aprueba la materia."
else
    echo "El alumno reprueba la materia"
fi

read -p "Indique cual es su edad:" edad
echo -e "\n"
if [ $edad -le 18 ]; then
    echo "La prersona no puede sufragar"
else
    echo "La persona puede sufragar"
fi


