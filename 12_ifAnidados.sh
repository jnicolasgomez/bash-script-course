#!/bin/bash
#programa para ejempmlificar el uso de los if anidados
# Autor: Nicolas G


notaClase=0
edad=0

echo " Ejemplo Sentencia if Else"
read -n1 -p "Indique cual es su nota (1-9)" notaClase
echo -e "\n"
if [ $notaClase -ge 7 ]; then
    echo "El alumno aprueba la materia."
    read -p "Si va a continuar estudiando en le siguiente nivel (s/n): " continua
    if [ $continua = "s" ]; then
        echo "BIenvenido al siguiente nivel"
    else
        echo "Gracias por trabajar con nosotros, mucha suerte!!"
    fi
else
    echo "El alumno reprueba la materia"
fi



