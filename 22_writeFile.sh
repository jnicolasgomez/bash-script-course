#!/bin/bash
# Programa para ejemplificar como se escribe en un archivo
# Autor: Nicolas G

echo "Escribir en un archivo"

echo "Valores escritos ocn el comando echo" >> $1

#Adicion multilinea
cat <<EOM >> $1
$2
EOM
