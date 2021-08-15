#!/bin/sh

echo -n "[31m"  ## red
eval $* | while read line; do
echo -n "[36m"  ## blue
echo $line
echo -n "[31m"  ## red
done
echo -n "[0m"  ## reset color
