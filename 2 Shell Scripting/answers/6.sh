#!/bin/bash

while true; do
    echo "Masukkan angka pertama:"
    read angka1
    echo "Masukkan angka kedua:"
    read angka2
    echo "Masukkan operasi (t= tambah, k= kurang, x= kali, b= bagi)"
    read operator
    echo "Hasil:"
    if [[ $operator = 't' ]]; then
        echo "$((angka1 + angka2))"
    elif [[ $operator = 'k' ]]; then
        echo "$((angka1 - angka2))"
    elif [[ $operator = 'x' ]]; then
        echo "$((angka1 * angka2))"
    elif [[ $operator = 'b' ]]; then
        echo "$((angka1 / angka2))"
    else
        echo "Operator tidak sesuai."
    fi
done