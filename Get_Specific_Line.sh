#!/bin/bash
#reads specific line number
read -p "Enter the Directory path :" Dir #reads Directory path
if [ -d "$Dir" ];then #checks if directory is present or not
#if yes
	read -p "Enter File name :" Fname #reads file name
	if test -f $Dir/$Fname ;then #checks If file is present or not
	#if yes
		a=`wc -l <$Dir/$Fname` #assign value maximum lines in a file
		read -p "Enter a line number to be printed :" Lno #reads line number
		if test "$Lno" -le "$a";then #checks if line number is present or not
		#if yes
			cat $Dir/$Fname | sed -n "$Lno"p #cat command dispays all the contents of the file ,| pipelines the output of cat command to sed command which prints the specific line
		else
		#if no
			echo "Line is not present"
		fi
	else
	#if no
		echo "file is not present"
	fi
else
#if no
	echo "Directory doesnot exsist"
fi
