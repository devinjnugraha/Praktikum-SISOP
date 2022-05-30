#!/bin/bash

for ((i = 0; i < 10; i++)); do
    if [[ i -eq 9 ]]; then
        echo $(($RANDOM * -1))
    else
        echo $RANDOM
    fi
done