#!/bin/bash
# shows the first 10 lines and offers to delete, but ignores .git* type files

for i in $( find . -maxdepth 1 -type f -print | grep -v ".git" )
	do 
		echo -e "----------------------\nfile: ${i}----------------------\n"
		head $i
		echo "delete?"
		read d 
		if [ "$d" == "y" ]
			then 
				rm $i
		fi
		echo -e "--\n" 
done
