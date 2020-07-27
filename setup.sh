# create.sh
echo $'cp template.cpp $1.cpp\nnvim -s .gg $1.cpp' > create.sh

# template
read -n 1 -r -s -p $'Press any key to create template file...\n'
nvim template.cpp

# start line
read -p $'Enter starting line of cursor:\n' line
((line=line-1))
echo "$line"gg > .gg

# run.sh
echo $'g++ -g $1\n./a.out' > run.sh

# make all executable
chmod +x create.sh
chmod +x run.sh
