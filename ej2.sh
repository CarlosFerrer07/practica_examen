#!/bin/bash

echo "Introduce un numero mayor que 0: "
read numero

while [ $numero -le 0 ]; do
    echo "El numero introducido no es correcto"
    echo "Introduce un numero mayor que 0: "
    read numero
done

if [ $(($numero%2)) -eq 0 ];then
    echo "el numero $numero es un numero par"
else 
    echo "el numero $numero es un numero impar"
fi