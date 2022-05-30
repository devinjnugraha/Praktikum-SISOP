#!/bin/bash

i=1
for dat in $(ls); do
    echo “Tipe file `file $dat`”
    i=$(($i+1))
done