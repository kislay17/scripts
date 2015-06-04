#!/bin/bash
source /home/vagrant/scripts/Check.sh #source command inherit functions of Check.sh script
#Adds line above a specific line
read -p "Enter the directory name :" Dir #reads the directory path
Dir_check $Dir #calls Dir_check function for Directory exsistence
	read -p "Enter the file name :" Fname #reads the file name
	File_check $Dir/$Fname #calls File_check function for file exsistence
		read -p "Enter the line number above which line is to insert :" Lno #reads the line number
		a=`wc -l <$Dir/$Fname` #a stores maximum number of lines in a file
		Line_no $Lno $a #calls Line_no function for line number exsistence
			read -p "Enter line :" Line #reads the line
			sed -i "$Lno"i$Line $Dir/$Fname #insert line above specified line
			echo "Line inserted" #prints statement
