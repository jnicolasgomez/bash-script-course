#!/bin/bash
#programa para ejempmlificar el uso de la sentencia case
# Autor: Nicolas G


notaClase=0
edad=0

echo " Ejemplo Sentencia Case"
read -n1 -p "Indique una opcion de la A a la Z" opcion
echo -e "\n"

case $opcion in
    "A") echo -e "\nOperacion guardar archivo";;
    "B") echo -e "\nOperacion Eliminar archivo";;
    [C-E]) echo "No esta implementada la operacion";;
    "*") "Opcion incorrecta"
esac
