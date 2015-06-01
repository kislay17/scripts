#!/bin/bash
#Adds line above a specific line
read -p "Enter the directory name :" Dir #reads the directory path
if [ -d "$Dir" ];then #checks if Directory is present or not
#if yes
	read -p "Enter the file name :" Fname #reads the file name
	if test -f $Dir/$Fname;then #checks if file is present or not 
	#if yes
		read -p "Enter the line number above which line is to insert :" Lno #reads the line number
		a=`wc -l <$Dir/$Fname` #a stores maximum number of lines in a file
		if test "$Lno" -le "$a";then #checks if line is present or not
		#if yes
			read -p "Enter line :" Line #reads the line
			sed -i "$Lno"i$Line $Dir/$Fname #insert line above specified line
			echo "Line inserted" #prints statement
		else
		#if no
			echo "Line is not present"
		fi
	else
	#if no
		echo "File does not present"
	fi
else
#if no
	echo "Directory doesnot exsist"
fi
