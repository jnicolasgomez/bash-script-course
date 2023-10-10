#!/bin/bash
# Programa para ejemplificar el uso de arreglos
# Autor: Nicolas G

arregloNumeros=(1 2 3 4 5 6)
arregloCadenas=(Juan, Gomez, Pedro, Perez)
arregloRangos=({A..Z} {10..20})

#Imprimir todos los valores
echo "Arreglo de numeros: ${arregloNumeros[*]}"
echo "Arreglo de Cadenas:${arregloCadenas[*]}"
echo "Arreglo de rangos: ${arregloRangos[*]}"

#Imprimir los tamanos d elos arreglos
 
echo "Tamano Arreglo de numeros: ${#arregloNumeros[*]}"
echo "Tamano Arreglo de Cadenas:${#arregloCadenas[*]}"
echo "Tamano Arreglo de rangos: ${#arregloRangos[*]}"

#imprimir la posicion 3 del arreglo


echo "posicion 3 del Arreglo de numeros: ${arregloNumeros[2]}"
echo "posicion 3 del Arreglo de Cadenas:${arregloCadenas[2]}"
echo "Posicion 3 del Arreglo de rangos: ${arregloRangos[2]}"


#Anadir y eliminar valores en un arreglo
arregloNumeros[7]=20
unset arregloNumeros[0]
echo "Arreglo numeros: ${arregloNumeros[*]}"
echo "Tamano arreglo numeros: ${#arregloNumeros[*]}"
