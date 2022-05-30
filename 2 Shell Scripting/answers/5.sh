#!/bin/bash

n=0
while true; do
    read input
    if [[ input -le 0 ]]; then
        break;
    else
        n=$((n+input))
    fi
done

echo $n
    