#!/bin/bash
#Add a line in a file if not present
read -p "Enter the Directory name :" Dir #raeds the directory name
if [ -d "$Dir" ];then #if checks if directory is present or not
#if yes
	read -p "Enter  a file name :" Fname #reads the file name
	if test -f $Dir/$Fname; then #if checks if file is present or not
	#if yes
		read -p "Enter the Line :" Line #reads the line to be added
		if grep "$Line" $Dir/$Fname; then #checks if line is present 
		#if yes
			echo "Line already exsist"
		else
		#if no
			echo "$Line" >> $Dir/$Fname
			echo "Line is appended"
		fi
	else
	#if no
		echo "File doesnot exsist"
	fi
else
	echo "Directory doesnot exsist"
fi 


echo "Directory doesnot exsist" #prints statement, if first if condition sets no

else
fi 
