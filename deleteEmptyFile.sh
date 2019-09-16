#!/bin/bash
if [[ $1 = "" ]]
	then
	before=`ls | wc -l`   # Assigns result of amount of file  in current directory to 'before'
	find $1 -size 0 -delete #find empty files in the current file and delete them.
	after=`ls | wc -l` #Assigns result of the amount of file in the current directory after deletion process.
	((count = before - after)) #Finds the amount of file that deleted.
	echo " $count zero-length files are removed from the directory " `pwd`
else
	cd $1
	before=`ls | wc -l`    # Assigns result of amount of file  in input directory to 'before'
	find $1 -size 0 -delete #find empty files in the input file and delete them.
	after=`ls | wc -l` #Assigns result of the amount of file in the input directory after deletion process.
	((count = before - after)) #Finds the amount of file that deleted.
	echo " $count zero-length files are removed from the directory $1 "
fi
