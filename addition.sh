#!/bin/bash 
echo 'Enter a sequence of numbers followed by "end"'
max=0
while read line #take the input.
 do if [ $line = "end" ] #if input is equal to string end then go out of while.
	then break
    else if [[ $max -lt $line ]] #if input is a number check whether is bigger or not.
	then   max=$line #if it is bigger ,assign it as a new maximum number
	 fi
fi
done
echo 'Maximum = '$max #Print the max number.
