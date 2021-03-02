# template
read -n 1 -r -s -p $'Press any key to create template file...\n'
nvim .config.d/template.cpp

# start line
read -p $'Enter starting line of cursor:\n' line
((line=line-1))
echo "$line"gg > .config.d/cursorpos

# make all executable
chmod +x create.sh
chmod +x run.sh
chmod +x .config.d/color.sh
chmod +x .config.d/.nl
