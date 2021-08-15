#!/bin/sh

# template
read -p 'Press Enter to create a template...' line
nvim .config.d/template.cpp

# starting line
read -p "Enter the starting line: " line
echo "$line"gg > .config.d/cursorpos

# make everything executable
chmod +x create.sh
chmod +x run.sh
chmod +x .config.d/color.sh
chmod +x .config.d/.nl
