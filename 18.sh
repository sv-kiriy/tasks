#!bin/bash

echo "Enter english letter: "
read letter

case $letter in
 'a' | 'e' | 'y' | 'u' | 'i' | 'o' | 'A' | 'E' | 'Y' | 'U' | 'I' | 'O')
 	echo "Vowel"
	;;
  *)
	echo "Consonant"
	;;
esac
exit
