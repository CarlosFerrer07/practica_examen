#!/bin/bash

echo "Escribe el titulo de un libro"
read titulo
echo "Escribe el año del libro"
read anyo
echo "Escribe la editorial del libro"
read editorial

echo "Selecciona un genero 1. DRAMA 2.TERROR 3.AMOR 4.MISTERIO 5.AVENTURAS"
read generoNumero

while [ $generoNumero -lt 1 ] || [ $generoNumero -gt 5 ]; do
    echo "Selecciona un genero 1. DRAMA 2.TERROR 3.AMOR 4.MISTERIO 5.AVENTURAS"
    read generoNumero
done

case $generoNumero in
    1) genero="Drama" 
    ;;
    2) genero="Terror"
    ;;
    3) genero="amor"
    ;;
    4) genero="misterio"
    ;;
    5) genero="Aventuras"
    ;;
esac

echo "Título: $titulo, año: $anyo, editorial: $editorial, genero: $genero">>bdlibros.txt