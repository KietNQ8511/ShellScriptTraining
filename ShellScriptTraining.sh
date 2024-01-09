# Training shell script

#scripts start with a bash bang
#! /bin/bash

# create file
touch hello_world.sh

# find the path to your bash shell
which bash (in my case, the path is /bin/bash I will include this in the shebang.)

# Write the command
we will echo "Hello world" to the console

# Provide execution rights to your user
# Modify the file permissions and allow execution of the script by using the command below:
chmod u+x Hello_world.sh
# chmod modifies the exitsting rights of a file for a perticular user. We are adding +x to user

# Run the script
# We can run the script in the following ways:
./hello_world.sh 
bash hello_world.sh



# The Basic Syntax of Bash scripting
# Just like any other programming language, bash scripting follows a set of rules to create # programs understandable by the computer
# How to define variables
# We can define a variable by using the syntax variable_name=value.   
# To get the value of the variable, add '$' before the variable
ex: 
"""
#!/bin/bash
# A simple variable example
greeting=Hello
name=Tux
echo $greeting $name
"""
# -----------------------------------
# Arithmetic expressions
+	addition
-	subtraction
*	multiplication 
/	division
**	exponentiation (Lũy thừa)
%	modulus

ex:
"""
expr 16 / 4
"""
# -----------------------------------
ex: declare a variable from an expression
var = $((3 + 9))


# get two decimal (22/7) -> print 3.14
echo "scale=2;22/7" | bc

# how to read user input
# Sometimes you'll need to gather user input and perform relevant operations.
# In bash, we can take user input using the read command.

read variable_name
# declare variable x = variable just read
x=$$((variable_name))





























