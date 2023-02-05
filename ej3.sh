#!/bin/bash

valor=$1

if test -z "$1"; then #Con esta linea comprobamos si existe el parámetro, test -z "$parametro"
    echo "no has introducido parametro"
else 
    if [ $valor -le 0 ]; then
        echo "El parametro no es valido"
    else
        for i in `seq 1 $valor`; do
            echo $i
        done
    fi
fi

