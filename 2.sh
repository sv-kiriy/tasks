#!bin/bash

s=''  

for i in $@
	do
	s="$s $i"
done

$s

exit

# script run examples: 
# bash 2.sh grep 'x' *.sh
# bash 2.sh cal 5 2020
