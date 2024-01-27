#!/bin/bash

# create a file
# nano newfile.txt   

# Declare a string variable
VAR="global variable"
String="Hello ss"
 
echo $String

function bash { # attention space
# Define bash local variable
# This variable is local to bash function only
local VAR="local variable"
echo $VAR
}

echo $VAR
bash

# Note the bash glocal variable did not change
# "local" is bash reserverd word
echo $VAR
#------------------------------------------------
# Passing arguments to the bash scripting tutorial
# when executing a bash script, It is possible to pass arguments to it in your command, As you can see in the example below, there are ultiple ways that a Bash script can interact with arguments we provide.

# use predifined variables to access passed arguments 
# echo arguments to the shell
echo $1 $2 $3 #' -> echo $1 $2 $3'

# store all argument to args array
args=("$@")

# get number of arguments
$#

# --------------------
$number : # is print arguments 0->n-1

# echo arguments to the shell
echo ${args[0]} ${args[1]} ${args[2]}

# use $@ to print out all arguments at once
echo $@
echo Number of arguments passed: $#

# executing shell commands with bash 
# the best way to execute a separate shell command inside of a Bash script is by createing a new subshell through the $() syntax. check the example below where we echo the result of running the uname -o command

#use a subshell $() to execute shell command
echo $(uname -o) 
# executing bash command without subshell echo uname -o 
echo uname -o

# Reading user input
#!/bin/bash
echo -e "Hi, please type the word : \c "
read word
echo 'The word you entered is: $word'
echo -e "Can you enter two words?"
read word1 word2
echo "Here is your input: \"$word1\" \"$word2\""

echo -e "How do you feel about bash scripting?"
#read command now stores a reply into te default build-in variable $REPLY
read
echo "You said $REPLY, I'm glad to hear that! "
echo -e "What are your favorite colours ? "
# -a makes read command to read into an array
read -a colours 
echo "My favorite colours are also ${colours[0]}, ${colours[1]} and ${colours[2]}:-)"





