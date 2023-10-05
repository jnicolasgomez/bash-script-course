# !/bin/bash
# Programa para ejemplificar como capturar la informacion del usuario y validarla
# Autor: Nicolas G


echo "Programa Solicitar informacion"
# Acepta informacion de un solo caracter
read -p "Ingresar tu nombre: " nombre
echo -e "\n"
read -p "Ingresar tu apellido: " apellido
echo -e "\n"
read -p "Ingresar tu edad: " edad
echo -e "\n"
read -p "Ingresar tu direccion: " direccion
echo -e "\n"
read -n10 -p "Ingresar tu numero telefonico: " telefono
echo -e "\n"

echo "Nombre: $nombre
Apellido: $apellido
Edad: $edad
Direccion: $direccion
Telefono: $telefono"







