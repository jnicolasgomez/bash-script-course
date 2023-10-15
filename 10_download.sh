11_ifElse.sh                                                                                        000644  000765  000024  00000001003 14507617777 014776  0                                                                                                    ustar 00nicolasgomez                    staff                           000000  000000                                                                                                                                                                         #!/bin/bash
#programa para ejempmlificar el uso de la sentencia de desicion if else
# Autor: Nicolas G


notaClase=0
edad=0

echo " Ejemplo Sentencia if Else"
read -n1 -p "Indique cual es su nota (1-9)" notaClase
echo -e "\n"
if (( $notaClase >= 7 )); then
    echo "El alumno aprueba la materia."
else
    echo "El alumno reprueba la materia"
fi

read -p "Indique cual es su edad:" edad
echo -e "\n"
if [ $edad -le 18 ]; then
    echo "La prersona no puede sufragar"
else
    echo "La persona puede sufragar"
fi


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             11_ifElseifElse.sh                                                                                  000644  000765  000024  00000000637 14507620422 016117  0                                                                                                    ustar 00nicolasgomez                    staff                           000000  000000                                                                                                                                                                         #!/bin/bash
#programa para ejempmlificar el uso de la sentencia de desicion if els if, elsee
# Autor: Nicolas G


notaClase=0
edad=0

echo " Ejemplo Sentencia if Else"

read -p "Indique cual es su edad:" edad
echo -e "\n"
if [ $edad -le 18 ]; then
    echo "La prersona es adolescente"
elif [ $edad -ge 19 ] &&  [ $edad -le 64 ]; then
    echo "La persona es adulta"
else
    echo "La persona es adulto mayor"
fi


                                                                                                 12_ifAnidados.sh                                                                                    000644  000765  000024  00000001075 14507623604 015624  0                                                                                                    ustar 00nicolasgomez                    staff                           000000  000000                                                                                                                                                                         #!/bin/bash
#programa para ejempmlificar el uso de los if anidados
# Autor: Nicolas G


notaClase=0
edad=0

echo " Ejemplo Sentencia if Else"
read -n1 -p "Indique cual es su nota (1-9)" notaClase
echo -e "\n"
if [ $notaClase -ge 7 ]; then
    echo "El alumno aprueba la materia."
    read -p "Si va a continuar estudiando en le siguiente nivel (s/n): " continua
    if [ $continua = "s" ]; then
        echo "BIenvenido al siguiente nivel"
    else
        echo "Gracias por trabajar con nosotros, mucha suerte!!"
    fi
else
    echo "El alumno reprueba la materia"
fi



                                                                                                                                                                                                                                                                                                                                                                                                                                                                   13_expresionesCondicionales.sh                                                                      000644  000765  000024  00000001677 14507626753 020643  0                                                                                                    ustar 00nicolasgomez                    staff                           000000  000000                                                                                                                                                                         #!/bin/bash
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


                                                                 14_case.sh                                                                                          000644  000765  000024  00000000635 14507627555 014512  0                                                                                                    ustar 00nicolasgomez                    staff                           000000  000000                                                                                                                                                                         #!/bin/bash
#programa para ejempmlificar el uso de la sentencia case
# Autor: Nicolas G


notaClase=0
edad=0

echo " Ejemplo Sentencia Case"
read -n1 -p "Indique una opcion de la A a la Z" opcion
echo -e "\n"

case $opcion in
    "A") echo -e "\nOperacion guardar archivo";;
    "B") echo -e "\nOperacion Eliminar archivo";;
    [C-E]) echo "No esta implementada la operacion";;
    "*") "Opcion incorrecta"
esac
                                                                                                   15_arreglos.sh                                                                                      000644  000765  000024  00000001713 14511324427 015377  0                                                                                                    ustar 00nicolasgomez                    staff                           000000  000000                                                                                                                                                                         #!/bin/bash
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
                                                     16_forLoop.sh                                                                                       000644  000765  000024  00000001222 14511326027 015173  0                                                                                                    ustar 00nicolasgomez                    staff                           000000  000000                                                                                                                                                                         #!/bin/bash
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

                                                                                                                                                                                                                                                                                                                                                                              17_whileLoop.sh                                                                                     000644  000765  000024  00000000325 14511326410 015515  0                                                                                                    ustar 00nicolasgomez                    staff                           000000  000000                                                                                                                                                                         #!/bin/bash
# Programa para ejemplificar el uso de la sentencia de iteracion while
# Autor: Nicolas G


numero=1

while [ $numero -ne 10 ]
do
    echo "Imprimiendo $numero veces"
    numero=$((numero + 1))
done


                                                                                                                                                                                                                                                                                                           18_loopsAnidados.sh                                                                                 000644  000765  000024  00000000337 14511326743 016367  0                                                                                                    ustar 00nicolasgomez                    staff                           000000  000000                                                                                                                                                                         #!/bin/bash
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
                                                                                                                                                                                                                                                                                                 19_breakContinue.sh                                                                                 000644  000765  000024  00000000600 14511327614 016351  0                                                                                                    ustar 00nicolasgomez                    staff                           000000  000000                                                                                                                                                                         #!/bin/bash
# Programa para ejemplificar el uso de break y continue
# Autor: Nicolas G

echo "Sentencias break y continue"
for fil in $(ls)
do
    for nombre in {1..4}
    do
        if [ $fil = "10_download.sh" ]; then
            break;
        elif [[ $fil == 4* ]]; then
            continue;
        else
            echo "Nombre archivo:$fil _ $nombre"
        fi
    done
done
                                                                                                                                1_uitiliyPostgres.sh                                                                                000764  000765  000024  00000000210 14507044742 016711  0                                                                                                    ustar 00nicolasgomez                    staff                           000000  000000                                                                                                                                                                         
# !/bin/bash
# Programa para realizar algunas operaciones utilitarias de Postgres
echo "Hola bienvenido al curso de programacion bash"
                                                                                                                                                                                                                                                                                                                                                                                        20_menuOpciones.sh                                                                                  000755  000765  000024  00000002116 14511330564 016221  0                                                                                                    ustar 00nicolasgomez                    staff                           000000  000000                                                                                                                                                                         #!/bin/bash
# programa que permite manejar las utilidades de Postgres
# Autor: Nicolas G

opcion=0

while :
do
    #LImpar la pantalla
    clear
    #desplegar el menu de opciones
    echo "-----------------------------------------"
    echo "PGUTIL - Programa de utilidad de postgres"
    echo "-----------------------------------------"
    echo "               MENU PRINCIPAL            "
    echo "1. Instalar postgres"
    echo "2. Desinstalar postgres"
    echo "3. Sacar un respaldo"
    echo "4. Restaurar respaldo"
    echo "5. Salir"

    #Leer los datos del usuario
    read -p "Ingrese una opcion [1-5]: " opcion

    #Validar la opcion ingresada
    case $opcion in
        1)
            echo "Instalar postgres......"
            sleep 3
            ;;
        2) echo "Desinstalar postgres......."
            sleep 3
            ;;
        3) echo "Sacar respaldo......."
            sleep 3
            ;;

        4) echo "Restaurar respaldo......."
            sleep 3
            ;;
        5)
            echo "Salir del programa"
            exit 0
            ;;
    esac
done

                                                                                                                                                                                                                                                                                                                                                                                                                                                  21_archivosDirectiorios.sh                                                                          000644  000765  000024  00000000554 14512331723 017754  0                                                                                                    ustar 00nicolasgomez                    staff                           000000  000000                                                                                                                                                                         #!/bin/bash
# Programa para ejemplificar la creacion de archivos y directorios
# Autor: Nicolas G

echo "Archivos - Directorios"

if [ $1 = "d" ]; then
    mkdir -m 755 $2
    echo "Directorio creado correctamente"
    ls -la $2
elif [ $1 = "f" ]; then
    touch $2
    echo "Archivo creado correctamente"
    ls -la $2
else
    echo "No existe esa opcion: $1"
fi
                                                                                                                                                    22_writeFile.sh                                                                                     000644  000765  000024  00000000330 14512332502 015475  0                                                                                                    ustar 00nicolasgomez                    staff                           000000  000000                                                                                                                                                                         #!/bin/bash
# Programa para ejemplificar como se escribe en un archivo
# Autor: Nicolas G

echo "Escribir en un archivo"

echo "Valores escritos ocn el comando echo" >> $1

#Adicion multilinea
cat <<EOM >> $1
$2
EOM
                                                                                                                                                                                                                                                                                                        23_readFile.sh                                                                                      000644  000765  000024  00000000710 14512333521 015263  0                                                                                                    ustar 00nicolasgomez                    staff                           000000  000000                                                                                                                                                                         #!/bin/bash
# Programa para ejemplificar como se lee en un archivo
# Autor: Nicolas G

echo "Leer en un archivo"
cat $1
echo -e "\nAlmacenar los valores en una variable"
valorCat=`cat $1`
echo "$valorCat"

#Se utiliza la variable IFS (Internal Field Separator) para evitar que los espacios en blanco se recorten al inicio al final se recortan

echo -e "\nLeer archivos linea por linea utilizando while"
while IFS= read linea
do
    echo "$linea"
done < $1
                                                        24_fileOperations.sh                                                                                000644  000765  000024  00000000637 14512334462 016551  0                                                                                                    ustar 00nicolasgomez                    staff                           000000  000000                                                                                                                                                                         #!/bin/bash
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
                                                                                                 25_tar.sh                                                                                           000644  000765  000024  00000000315 14513040070 014334  0                                                                                                    ustar 00nicolasgomez                    staff                           000000  000000                                                                                                                                                                         #!/bin/bash
# Programa para ejemplificar el empaquetamiento con el comando tar
# Autor: Nicolas G

echo "Empaquetar todos los scripts de la carpeta en un archivo comprimido"
tar -cvf shellCourse.tar *.sh

                                                                                                                                                                                                                                                                                                                   26_gzip.sh                                                                                          000644  000765  000024  00000000570 14513040401 014521  0                                                                                                    ustar 00nicolasgomez                    staff                           000000  000000                                                                                                                                                                         #!/bin/bash
# Programa para ejemplificar el empaquetamiento con el comando tar y gzip
# Autor: Nicolas G

echo "Empaquetar todos los scripts de la carpeta en un archivo comprimido"
tar -cvf shellCourse.tar *.sh

# Cuando se empaqueta con gzip el empaquetamiento anterior se elimina
gzip shellCourse.tar

echo "Empaquetar un oslo archivo, con un ratio 9"
gzip -9 9_options.sh

                                                                                                                                        27_pbzip2.sh                                                                                        000644  000765  000024  00000000505 14513040706 014765  0                                                                                                    ustar 00nicolasgomez                    staff                           000000  000000                                                                                                                                                                         #!/bin/bash
# Programa para ejemplificar el empaquetamiento con el comando pbzip
# Autor: Nicolas G

echo "Empaquetar todos los scripts de la carpeta en un archivo comprimido"
tar -cvf shellCourse.tar *.sh
pbzip2 -f shellCourse.tar


echo "Empaquetar un directorio con tar y pbzip2"
tar -cf *.sh -c > shellCourseDos.tar.bz2

                                                                                                                                                                                           2_variables.sh                                                                                      000755  000765  000024  00000000420 14507064626 015451  0                                                                                                    ustar 00nicolasgomez                    staff                           000000  000000                                                                                                                                                                         # !/bin/bash

# Programa para revisar la declaracion de variables

opcion=0
nombre=Marco

echo "Opcion: $opcion y Nombre: $nombre"

# Exportar la variable nombre para que este disponible a los demas procesos
export nombre

# llamar al siguiente script

./2_variables_2.sh
                                                                                                                                                                                                                                                2_variables_2.sh                                                                                    000755  000765  000024  00000000175 14507064720 015674  0                                                                                                    ustar 00nicolasgomez                    staff                           000000  000000                                                                                                                                                                         # !/bin/bash

# Programa para revisar la declaracion de variables


echo "Opcion nombre pasada del script anterior: $nombre"
                                                                                                                                                                                                                                                                                                                                                                                                   3_tipoOperadores.sh                                                                                 000644  000765  000024  00000001640 14507067215 016500  0                                                                                                    ustar 00nicolasgomez                    staff                           000000  000000                                                                                                                                                                         # !/bin/bash
# Programa para revisar los tipos de operadores en bash
# Autor: Nicolas G

numA=10
numB=4

echo "Operadores Aritmeticos"
echo "Numeros: A=$numA y B=$numB"
echo "Sumar A + B = " $((numA + numB))
echo "Restar A - B = " $((numA - numB))
echo "Multiplicar A * B = " $((numA * numB))
echo "Dividir A / B = " $((numA / numB))
echo "Residuo A % B = " $((numA % numB))

echo -e "\nOperadores Relaciones"
echo "Numeros: A=$numA y B=$numB"
echo "A > B = " $((numA > numB))
echo "A < B = " $((numA < numB))
echo "A >= B = " $((numA >= numB))
echo "A <= B = " $((numA <= numB))
echo "A == B = " $((numA == numB))
echo "A != B = " $((numA != numB))


echo -e "\nOperadores Asignacion"
echo "Numeros: A=$numA y B=$numB"
echo "Sumar A += B" $((numA += numB))
echo "Restar A -= B" $((numA -= numB))
echo "Multiplicar A *= B" $((numA *= numB))
echo "Dividir A /= B" $((numA /= numB))
echo "Residuo A %= B" $((numA %= numB))







                                                                                                4_argumentos.sh                                                                                     000644  000765  000024  00000000415 14507070345 015663  0                                                                                                    ustar 00nicolasgomez                    staff                           000000  000000                                                                                                                                                                         # ! /bin/bash
# Programa para ejemplificar el paso de argumentos

nombreCurso=$1
horarioCurso=$2

echo "El nombre del curso es: $nombreCurso dictado en el horario de $horarioCurso"
echo "El numero de parametros enviados es: $#"
echo " Los parametros enviaods son: $*"

                                                                                                                                                                                                                                                   5_subtitutionCommand.sh                                                                             000644  000765  000024  00000000467 14507072471 017401  0                                                                                                    ustar 00nicolasgomez                    staff                           000000  000000                                                                                                                                                                         # !/bin/bash
# Programa para como ejecutar comandos dentro de un programa y almacenar en una variable para su posterior utilizacion 
# Autor: Nicolas G

ubicacionActual=`pwd`
infokernel=$(uname -a)

echo "La ubicacion actual es la siguiente: $ubicacionActual"
echo "Informacion del kernel: $infokernel"








                                                                                                                                                                                                         6_readEcho.sh                                                                                       000644  000765  000024  00000000606 14507074227 015220  0                                                                                                    ustar 00nicolasgomez                    staff                           000000  000000                                                                                                                                                                         # !/bin/bash
# Programa para ejemplificar como capturar la informacion del usuario utilizando el comando echo, read y %REPLY
# Autor: Nicolas G

option=0
backupName=""

echo "Programa Utilidades Postgres"
echo -n "Ingresar una opcion: "
read
option=$REPLY
echo -n "Ingresar el nombre del archivo del backup: "
read
backupName=$REPLY
echo "Opcion: $option , backupName:$backupName"









                                                                                                                          7_read.sh                                                                                           000644  000765  000024  00000000537 14507074556 014432  0                                                                                                    ustar 00nicolasgomez                    staff                           000000  000000                                                                                                                                                                         # !/bin/bash
# Programa para ejemplificar como capturar la informacion del usuario utilizando el comando read
# Autor: Nicolas G

option=0
backupName=""

echo "Programa Utilidades Postgres"
read -p "Ingresar una opcion: " option
read -p "Ingresar el nombre del archivo del backup: " backupName
echo "Opcion: $option , backupName:$backupName"









                                                                                                                                                                 8_readValidate.sh                                                                                   000644  000765  000024  00000000725 14507605672 016103  0                                                                                                    ustar 00nicolasgomez                    staff                           000000  000000                                                                                                                                                                         # !/bin/bash
# Programa para ejemplificar como capturar la informacion del usuario y validarla
# Autor: Nicolas G

option=0
backupName=""
clave=""

echo "Programa Utilidades Postgres"
# Acepta informacion de un solo caracter
read -n1 -p "Ingresar una opcion: " option
echo -e "\n"

read -n10 -p "Ingresar el nombre del archivo del backup: " backupName
echo -e "\n"
echo "Opcion: $option , backupName:$backupName"
read -s -p "Clave: " clave
echo "Clave: $clave"








                                           expresion_regular.sh                                                                                000644  000765  000024  00000001735 14507100007 017004  0                                                                                                    ustar 00nicolasgomez                    staff                           000000  000000                                                                                                                                                                         # !/bin/bash
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










                                   reto3.sh                                                                                            000755  000765  000024  00000002313 14507622576 014323  0                                                                                                    ustar 00nicolasgomez                    staff                           000000  000000                                                                                                                                                                         # !/bin/bash
# Programa para ejemplificar el uso de condicionales
# Autor: Nicolas G


echo "Programa Solicitar informacion"
# Acepta informacion de un solo caracter
read -n1 -p "Ingresar un numero del 1 al 5: " opcion
echo -e "\n"

if [ $opcion -eq 1 ]; then
    echo "Ingresaste el numero 1"
elif [ $opcion -eq 2 ]; then
    read -p "Ingresa la palabra hola:" palabra
    if [ "$palabra" = "hola" ]; then
        echo "Muy bien"
    else
        echo "La palabra $palabra no es igual a hola"
    fi
elif [ $opcion -eq 3 ]; then
    read -p "Ingresa el nombre de un archivo: " archivo
    if [ -e $archivo ]; then
        echo "El archivo $archivo existe"
    else
        echo "El archivo no existe"
    fi
elif [ $opcion -eq 4 ]; then
    read -p "Ingresa el nombre de un archivo: " archivo
    if [ -r $archivo ]; then
        echo "El archivo $archivo puede ser leido"
    else
        echo "El archivo no puede ser leido"
    fi
elif [ $opcion -eq 5 ]; then
    read -p "Ingresa el nombre de un archivo: " archivo
    if [ -x $archivo ]; then
        echo "El archivo $archivo puede ser ejecutado"
    else
        echo "El archivo no puede ser ejecutado"
    fi
else
    echo "ingresaste un numero no valido"
fi








                                                                                                                                                                                                                                                                                                                     reto4.sh                                                                                            000755  000765  000024  00000003224 14511331624 014310  0                                                                                                    ustar 00nicolasgomez                    staff                           000000  000000                                                                                                                                                                         #!/bin/bash
# programa que permite obtener informacion de la maquina
# Autor: Nicolas G

opcion=0

while :
do
    #LImpar la pantalla
    clear
    #desplegar el menu de opciones
    echo "-----------------------------------------"
    echo "PINFO - Programa para obtener informacion"
    echo "-----------------------------------------"
    echo "               MENU PRINCIPAL            "
    echo "1. Procesos Actuales"
    echo "2. Memoria disponible"
    echo "3. Espacio en Disco"
    echo "4. Informacion de Red"
    echo "5. Variables de Entorno configuradas"
    echo "6. Informacion programa"
    echo "7. Backup informacion"
    echo "8. Salir"

    #Leer los datos del usuario
    read -p "Ingrese una opcion [1-8]: " opcion

    #Validar la opcion ingresada
    case $opcion in
        1)
            echo "Opcion presionada: $opcion Proceso actuales"
            sleep 3
            ;;
        2) 
            echo "Opcion presionada: $opcion Memoria disponible"
            sleep 3
            ;;
        3) 
            echo "Opcion presionada: $opcion Espacio en disco"
            sleep 3
            ;;

        4) 
            echo "Opcion presionada: $opcion Informacion de Red"
            sleep 3
            ;;

        5) 
            echo "Opcion presionada: $opcion Variables de entorno"
            sleep 3
            ;;

        6) 
            echo "Opcion presionada: $opcion Informacion Programa"
            sleep 3
            ;;
        
        7) 
            echo "Opcion presionada: $opcion Backup informacion"
            sleep 3
            ;;
        8)
            echo "Salir del programa"
            exit 0
            ;;
    esac
done

                                                                                                                                                                                                                                                                                                                                                                            reto_infoUsuario.sh                                                                                 000644  000765  000024  00000001103 14507612011 016573  0                                                                                                    ustar 00nicolasgomez                    staff                           000000  000000                                                                                                                                                                         # !/bin/bash
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







                                                                                                                                                                                                                                                                                                                                                                                                                                                             utilityHost.sh                                                                                      000644  000765  000024  00000000344 14512335543 015616  0                                                                                                    ustar 00nicolasgomez                    staff                           000000  000000                                                                                                                                                                         # ! /bin/bash

option="Opcion"
result="Resultado"

echo "$option"
echo "$result"

#Create log file
log_file=log_`date +_%Y%m%d%H%M%S`.txt
touch $log_file
echo "Opcion: $option y Resultado: $result" >> $log_file
ls -la $log_file
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            