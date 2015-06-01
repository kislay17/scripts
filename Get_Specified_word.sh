#!/bin/bash
#Get a specific word at a  specific line and at specific position
read -p "Enter Directory path ;" Dir #reads Directory path
if [ -d "$Dir" ];then #check if Directory is present or not
#if yes
	read -p "Enter file name :" Fname #reads file name
	if test -f $Dir/$Fname;then #checks if file is present or not
	#if yes
		a=`wc -l <$Dir/$Fname` #a stores max no. of line of file
		read -p "Enter line number :" Lno #reads line number
		if test "$Lno" -le "$a";then #checks if line is present or not
		#if yes
			read -p "Enter word position :" Rp #reads word position
			sed -n "$Lno"p $Dir/$Fname | awk "{print $"$Rp"}" #sed commands get the specific line, awk command prints the specific colummn
		else
		#if no
			echo "Line is not present"
		fi
	else
	#if no
		echo "File doesnot exsist"
	fi
else
#if no
	echo "Directory doesnot exsist"
fi
