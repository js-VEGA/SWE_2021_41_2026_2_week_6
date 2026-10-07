#!/bin/bash

for file in files/*; do
    [ -f "$file" ] || continue
    name=$(basename "$file")
    first="${name:0:1}"
    first="${first,,}"
    mv "$file" "$first/"
done
