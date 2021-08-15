#!/bin/sh

make
echo "Compiled..."
./.config.d/color.sh .config.d/.nl ./"${1%.*}.out"
echo
