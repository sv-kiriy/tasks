#!bin/bash

num='^[0-9]'
letter='^[a-Z]'

echo 'Enter character: '
read c

if [[  $c =~ $num ]]
then
echo $c " is digit"
exit
fi
if [[ $c =~ $letter ]]
then
echo $c "is letter"
exit
fi
echo $c "is symbol"
exit 
