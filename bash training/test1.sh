#!/usr/bin/bash
# The trap command can be used to in Bash scripts to catch signals sent to the script and then execute a subroutine when they occur.
# The script below will detect a Ctrl + C interrupt.
# Bash trap command
trap bashtrap INT
# bash clear screen command
clear;
# bash trap function is executed when CTRL-C is pressed:
# bash prints message => Executing bash trap subrutine !

bashtrap()
{
	echo "CTRL+C Detected !... executing bash trap !"
}

# for loop from 1/10 to 10/10
for a in `seq 1 1`; do
	echo "$a/10 to Exit."
	sleep 1;
done
echo "Exit Bash Trap Example!!!"

# Arrays - Bash script tutorial
# Bash is capable of storing values in arrays. Check the sections below for two different examples.
# Declare simple bash array
# This example declares an array with four elements.
# Executing the script will output the elements of our array
ARRAY=('Debian Linux' 'Redhat Linux' Ubuntu Linux 1)
# get number of elements int the array
ELEMENTS=${#ARRAY[@]}
# echo each element in array
for ((i=0; i<$ELEMENTS; i++)); do
	echo ${ARRAY[${i}]}
done

# READ file into bash array
# RATHER file into bash array
# Rather than filling out all of the elements of our array in the Bash script itself, we can program our script to read input and put it into an array.
declare -a ARRAY
# Link filedescriptor 10 with stdin
exec 10<&0
# stdin replaced with a file supplied as a first argument
exec < $1
let count=0

while read LINE; do
	ARRAY[$count]=$LINE
	((count++))
done

echo Number of elements: ${#ARRAY[@]}
# echo array's content
echo ${ARRAY[@]}
# restore stdin from filedescriptor 10
# and close filedescriptor 10
exec 0<&10 10<&-









