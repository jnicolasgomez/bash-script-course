# !/bin/bash
# Programa para ejemplificar como capturar la informacion del usuario y validarla usando expresiones regulares
# Autor: Nicolas G

identificacionRegex='^[0-9]{10}$'
paisRegex='^EC|COL|US$'
fechaNacimientoRegex='^19|20[0-9]{2}[01-12][01-31]$'

echo "Expresiones Regulares"
read -p "Ingresar una identificacion: " identificacion
read -p "Ingresar el pais ej. [EC, COL, US]" pais
read -p "Ingresar la fecha de nacimiento [yyyyMMdd]: " fechaNacimiento

# Validacion Identificacion

if [[ $identificacion =~ $identificacionRegex ]]; then
    echo "Identificacion $identificacion valida"
else
    echo "Identificacion $identificacion invalida"
fi
# Validaicon Pais
if [[ $pais =~ $paisRegex ]]; then
    echo "Pais $pais valido"
else
    echo "Pais $pais invalido"
fi

#Validacion fecha de nacimiento
if [[ $fechaNacimiento =~ $fechaNacimientoRegex ]]; then
    echo "Fecha nacimiento $fechaNacimiento valida"
else
    echo "Fecha nacimiento $fechaNacimiento invalida"
fi










