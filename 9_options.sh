# !/bin/bash
# Programa para ejemplificar como se realiza el paso de opciones con o sin parametros
# Autor: Nicolas G

echo "Programa Opciones"
echo "Opcion 1 enviada: $1
echo "Opcion 2 enviada: $2
echo "Opciones enviada: $*"
echo -e "\n"
echo "Recuperar valores"
while [ -n "$1" ]
do
case "$1" in
-a) echo "-a option utilizada";;
-b) echo "-b opcion utilizada";;
-c) echo "-c opcion utilizada";;
*) echo "$1 no es una opcion";;
esac
shift
done
