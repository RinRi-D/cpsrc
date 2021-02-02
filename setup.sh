mkdir .config.d

# create.sh
echo $'cp .config.d/template.cpp ${1%.*}.cpp\nnvim -s .config.d/cursorpos ${1%.*}.cpp' > create.sh

# template
read -n 1 -r -s -p $'Press any key to create template file...\n'
nvim .config.d/template.cpp

# start line
read -p $'Enter starting line of cursor:\n' line
((line=line-1))
echo "$line"gg > .config.d/cursorpos

# color.sh
echo $'echo -en "\033[31m"  ## red\neval $* | while read line; do\necho -en "\033[36m"  ## blue\necho $line\necho -en "\033[31m"  ## red\ndone\necho -en "\033[0m"  ## reset color' > .config.d/color.sh

# run.sh
echo $'make\necho "Compiled..."\n./.config.d/color.sh .config.d/.nl ./"${1%.*}.out"\necho' > run.sh

# .nl
echo $'./$1\necho' > .config.d/.nl

# make all executable
chmod +x create.sh
chmod +x run.sh
chmod +x .config.d/color.sh
chmod +x .config.d/.nl
