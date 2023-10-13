#!/bin/bash
# Programa para ejemplificar las operaciones d eun archivo
# Autor: Nicolas G

echo "Operaciones de un archivo"
mkdir -m 755  backupScripts

echo -e "\nCopiar los scripts del directorio actual al nuevo directorio"
cp *.* backupScripts/
ls -la backupScripts/

echo -e "\nMover el directorio de backupScript a otra ubicacion: $HOME"
mv backupScripts $HOME

echo -e "\nEliminar los archivos .txt"
rm *.txt
