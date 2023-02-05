#!/bin/bash

echo "Introduce un numero correspondiente a las siguientes opciones"
echo "1.Buscar por título"
echo "2.Buscar por año"
echo "3.Buscar por editorial"
echo "4.Buscar por genero"
echo "5.insertar libro"
echo "6.Salir"
read eleccion

if [ $eleccion -lt 1 ] || [ $eleccion -gt 6 ]; then
    echo "La opcion introducida no es correcta"
    sleep 2
    ./libros.sh
else 
    case $eleccion in
    1) 
        read -p "Introduce el titulo a buscar: " titulo
        cat bdlibros.txt | grep "Título: $titulo"
    ;;
    2)
        read -p "Introduce el año a buscar: " anyo
        cat bdlibros.txt | grep "año: $anyo"
    ;;
    3)
        read -p "Introduce la editorial buscar: " editorial
        cat bdlibros.txt | grep "editorial: $editorial"
    ;;
    4)
        read -p "Introduce el genero a buscar: " genero
        cat bdlibros.txt | grep "genero: $genero"
    ;;
    5)
        ./libros-anyadir.sh
    ;;
    6)
    ;;    
    esac
fi