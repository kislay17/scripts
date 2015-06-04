#!/bin/bash
source /home/vagrant/scripts/Check.sh #inherits functions from Check.sh script
#reads specific line number
read -p "Enter the Directory path :" Dir #reads Directory path
Dir_check $Dir #calls Dir_check Function for directory exsistence
	read -p "Enter File name :" Fname #reads file name
	File_name $Dir/$Fname #calls File_check function for file exsistence
		a=`wc -l <$Dir/$Fname` #assign value maximum lines in a file
		read -p "Enter a line number to be printed :" Lno #reads line number
		Line_no $Lno $a #calls Line_no function for line number exsistence in file
			cat $Dir/$Fname | sed -n "$Lno"p #cat command dispays all the contents of the file ,| pipelines the output of cat command to sed command which prints the specific line

