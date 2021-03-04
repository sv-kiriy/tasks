#!bin/bash 

echo "Enter process name: "

read s

pkill -f $s

exit
