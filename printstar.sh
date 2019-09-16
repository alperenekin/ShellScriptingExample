#!/bin/bash 
while read line
    do for i in $(seq 1 $line); #it arranges amount of * as output. 
	do printf "*"; #helps us to put output in a one line.
	done
	echo #for jumping to new line.
done < $1 #takes filename as an argument for program.
