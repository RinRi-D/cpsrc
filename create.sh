#!/bin/sh

cp -n .config.d/template.cpp ${1%.*}.cpp
nvim -s .config.d/cursorpos ${1%.*}.cpp
