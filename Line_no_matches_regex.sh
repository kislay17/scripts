#!/bin/bash
#Display Line number matches a regex
read -p "Enter directory name :" Dir #reads Directory name 
if [ -d "$Dir" ]; then #if checks whether directory exsist 
#if Directory exsist then
	read -p "Enter File name :" Fname #reads File name
	if test -f $Dir/$Fname ; then #if checks whether file exsist in given diectory
	#if file exsist then	
		read -p "Enter regex :" Reg #reads the regex
		grep -n "$Reg" $Dir/$Fname | cut -c1  #grep command finds the regex in the file , -n dispalys line number and its content, awk command prints    only colummn 1 detail
	else
	#if file doesnot exsist
		echo "File Doesnot exsist in Directory" #prints the given statement
	fi
else
#if directory doesnot exsist
	echo "Directory Doesnot exsist"	#prints the given statement
fi
