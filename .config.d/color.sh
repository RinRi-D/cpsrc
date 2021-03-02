echo -en "[31m"  ## red
eval $* | while read line; do
echo -en "[36m"  ## blue
echo $line
echo -en "[31m"  ## red
done
echo -en "[0m"  ## reset color
