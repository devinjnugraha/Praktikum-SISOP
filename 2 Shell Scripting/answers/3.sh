#!bin/bash

i=1
for dat in $(ls); do
    echo “File ke $i adalah $dat”
    i=$(($i+1))
done