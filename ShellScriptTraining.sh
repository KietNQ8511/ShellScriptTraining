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
x=$((variable_name))

# Numeric comparison logical operators
# Comparison is used to check if statements evaluate to true or false.
# We can use the below shown operators to compare two statements
# Equality				num1 -eq num2		is num1 equals to num2
# Greater than equal to 	num1 -ge num2		is num1 greater than equals to num2
# Greater than			num1 -gt num2		is num1 greater than num2
# Less than equals 		num1 -le num2		is num1 less than equal to num2
# Less than				num1 -lt num2		is num1 less than num2
# Not Equal to			num1 -ne num2		is num1 not equal to num2
if[conditions]
	then
		commands
fi

"""
Let's compare two numbers and find their relationship:

read x
read y
if [$x -gt $y]
then
echo X is greater than Y
elif [$x -lt $y]
then
echo X is less than Y
elif [$x -eq $y]
then
echo X is equal to Y
fi
"""

# Conditonal statement (Decision making)
# Conditions are expressions that evaluate to a boolean expression (true or false).
# To check conditions, we can us if, if-else, if-elif-else and nested conditionals.

# The structure of conditional state is as follows:
# if...then...fi #statement
# if...then...else...fi
# if...elif...else...fi
# if..then..else..if..then..fi..fi.. (Nested conditionals)

if [condition]
then
	statement
elif [condition]; then 
	statement
else
	do this by default
fi

# to create meaningful comparisons, we can use AND (-a) and OR (-o) as well.
# the below statement translates to: If a is greater than 40 and b is less than 6
# Example: Let's find the triangle type by reading the lengths of its sides

# Looping and skipping
# For loops allow you to execute statements a specific number of times
# Looping with numbers:
# in the example below, the loop will iterate 5 times.

for i in {1..5}
do 
	echo $i
done

# Loop with strings
for X in cyan magenta yellow
do
	echo $X
done
#

# while loop
# while loops check for a condition and loop until the condition remains true. 
# We need to provide a counter statement that increments the counter to control loop execution.
# In the example below, ((i += 1)) is the counter statement that increments the value of i.
"""
i = 1
while [[$i -le 10 ]] ; do
echo "$i"
(( i += 1 ))
done
"""

# READ FILE
# we can read the file line by line and print the output on the screen.
# 
"""
while read -r CURRENT_LINE
	do
		echo "$LINE: $CURRENT_LINE"
    ((LINE++))
done < "sample_file.txt"    # sample_file.txt can change with full file path
"""

# How to execute commands with back ticks
# If you need to include the output of a complex command in your script, you can write statement inside back ticks
# Syntax:
var=`commands`
# Example: suppose we want to get the output of a list of mountpoints with tmpfs in their name. We can craft a statement like this: df -h | grep tmpfs.
# To include it in the bash script, we can enclose it in back ticks.

var=`df -h | grep tmpfs`

echo $var

# How to get arguments for scripts from the command line
# It is possible to give arguments to the script on exeution
# $@ represents the position of the parameters, starting from one.

for x in $@
do
	echo "Entered arg is $x"
done

# then run above script like this:
./script arg1 arg2

# how to automate scripts by scheduling via cron Jobs
# Cron is a job scheduling utility present in Unix like system,
# you can schedule jobs to execute daily weekly, monthly or in a specific time of the day. 
# Automation in Linux heavily relies on cron jobs.

# Below is the syntax to schedule crons:
"""
# Cron job example
* * * * * sh /path/to/script.sh
"""

# Here, * represents minute(s) hour(s) day(s) month(s) weekday(s), respectively.


# how to check existing scripts in a system
# crontab -l lists the already scheduled scripts for a particular user
***** sh /opt/modules/health_check.sh
*/5**** sh /home/root/health_check.sh

# Using the find command 
# the find command helps to locate files based on certain pattern. 
# As most of the scripts end with .sh, we can use the find script like this.
find . -type f -name "*.sh"
. represent for current directory. You can change the path accordingly.
-type f indicates that the file type we are looking for is a text based file.
*.sh tells to match all files ending with .sh.







