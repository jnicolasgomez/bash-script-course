#!/bin/bash
# Programa para ejemplificar el uso de la sentencia de iteracion for
# Autor: Nicolas G

arregloNumeros=(1 2 3 4 5 6)
arregloCadenas=(Juan, Pedro, Roberto, Luisa)
echo "Iterar en la lista de numeros"
for num in ${arregloNumeros[*]}
do
    echo "Numero: $num"
done


echo "Iterar en la lista de cadenas"
for nom in ${arregloCadenas[*]}
do
    echo "Nombre: $nom"
done

echo "Iterar en Archivos"
for file in *
do
    echo "Nombre archivo: $file"
done

echo "Iterar utilizando un comando"
for fil in $(ls)
do
    echo "Nombre archivo: $fil"
done

echo "Iterar utilizando el formato tradicional"
for ((i-1; i<10; i++))
do
    echo "Numero: $i"
done

