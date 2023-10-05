#!/bin/bash
#programa para ejempmlificar el uso de expresiones condicionales
# Autor: Nicolas G

edad=0
pais=""
pathArchivo=""

read -p "ingrese su edad:" edad
read -p "Ingrese su pais:" pais
read -p "Ingrese el path de su archivo" pathArchivo

echo -e "\nExpresiones condicionales con numeros"
if [ $edad -lt 10 ]; then
    echo "La persona se trata de un nino o nina"
elif [ $edad -ge 10 ] && [ $edad -le 17 ]; then
    echo "La persona se trata de un adolescente"
else
    echo "La persona es mayor de edad"
fi
echo -e "\nExpresiones condicionales con cadenas"
if [ $pais = "EEUU" ]; then
    echo "La persona es americana"
elif [ $pais = "Ecuador" ] || [ $pais = "Colombia" ]; then
    echo "La persona es de Suramerica"
else
    echo "Se desconoce la nacionalidad"
fi

echo -e "\nExpresiones condicionales con archivos"

if [ -d $pathArchivo ]; then
    echo "El directorio  $pathArchivo existe"
else
    echo "El directorio $pathArchivo no existe"
fi


