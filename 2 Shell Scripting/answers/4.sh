#!/bin/bash

n=1
for dat in $(ls); do
echo “File bertipe `file $dat` ke $n adalah $dat”
let n+=1
done