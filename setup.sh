# create.sh
echo $'cp template.cpp $1.cpp\nnvim -s .gg $1.cpp' > create.sh

# template
read -n 1 -r -s -p $'Press any key to create template file...\n'
nvim template.cpp

# start line
read -p $'Enter starting line of cursor:\n' line
((line=line-1))
echo "$line"gg > .gg

# color.sh
echo $'echo -en "\033[31m"  ## red\neval $* | while read line; do\necho -en "\033[36m"  ## blue\necho $line\necho -en "\033[31m"  ## red\ndone\necho -en "\033[0m"  ## reset color' > color.sh

# run.sh
echo $'g++ -std=c++14 -g $1\necho "Compiled..."\n./color.sh ./a.out\necho' > run.sh

# make all executable
chmod +x create.sh
chmod +x run.sh
chmod +x color.sh
