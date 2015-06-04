#!/bin/bash
source /home/vagrant/scripts/Check.sh #source command inherits all the function of Check.sh script
read -p "Enter the Directory Path :" Dir #reads the Directory Path
Dir_check $Dir #calls Dir_check functions for Directory exsistence
	read -p "Enter the File name :" Fname #reads the file name
	File_check $Dir/$Fname #calls File_check function for file exsistence
		read -p "Enter the Line number : " Lno #reads the line number below which line is to be inserted
		a=`wc -l < $Dir/$Fname` #reads the maximum number of lines of the file
		Line_no $Lno $a #calls Line_no function to check Line number exsistence
			read -p "Enter the Line :" Line #reads the line
			sed -i "$Lno"a$Line $Dir/$Fname #insert the line below the line
			echo "Line inserted"
