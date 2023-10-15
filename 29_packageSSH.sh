#!/bin/bash
# Programa para ejemplificar la forma de trsnferir por la red utilizando el comando rsync, utilizando las opciones de empaquetamiento para optimizar la velocidad de transferencia
# Autor: Nicolas G

echo "Empaquetar todos los scripts y transferilos por la red a otro equipo"

host=""
usuario=""
read -p "Ingresar el host: " host
read -p "Ingresar usuario: " usuario
echo -e "\nEn este momento se procedera a empaquetar la carpeta y transferirla segun los datos ingresados"
rsync -avz $(pwd) $usuario@$host:/home/
