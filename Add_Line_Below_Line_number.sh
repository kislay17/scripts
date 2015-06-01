#!/bin/bash
#Add a line below a line 
read -p "Enter the Dir path :" Dir #reads Directory path
if [ -d "$Dir" ];then #checks Directory Availability
#if yes	
	read -p "Enter File name :" Fname #reads file name
	if test -f $Dir/$Fname ;then #checks file availability
	#if yes
		read -p "Enter the line number :" Lno #reads line number
		if test "wc -l $Dir/Fname" -ge "Lno";then #checks Line number availability
		#if yes
			read -p "Enter Line : " Line #reads line
			sed -i "$Lno"a$Line $Dir/$Fname #sed add the line before  the specified line
			echo "Line entered" #prints message
		else
			echo "Line number doesnot exsist" #prints message
		fi
	else
		echo "File not found" #prints message
	fi
else
	echo "Directory not found" #prints message
fi
