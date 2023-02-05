#!/bin/bash

dias=("Lunes" "Martes" "Miercoles" "Jueves" "Viernes" "Sabado" "Domingo")

echo "Introduce un dia del 1 al 30"
read dia

while [ $dia -le 0 ] || [ $dia -gt 30 ];do
    echo "El valor introducido no es correcto"
    echo "Introduce un dia del 1 al 30"
    read dia
done

resto=$(((dia - 1) %7))

resultado=${dias[$resto]}

echo "Estamos a $resultado"


