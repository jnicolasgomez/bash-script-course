#!/bin/bash
# Programa para ejemplificar el uso de los loops anidados
# Autor: Nicolas G

echo "Loops anidados"
for fil in $(ls)
do
    for nombre in {1..4}
    do
        echo "Nombre archivo:$fil _ $nombre"
    done
done
