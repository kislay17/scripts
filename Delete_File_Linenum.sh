#!/bin/bash
source /home/vagrant/scripts/Check.sh #source command inherits all function fromCheck.sh script
#Deletes a line number from a file
read -p "Enter the Dir path :" Dpath #reads the file path
Dir_check $Dir #calls Dir_check function for directory exsistence
	read -p "Enter the file name :" Fname #reads file name
	File_check $Dir/$Fname #calls File_check function for file exsistence
		read -p "Enter the line number to be deleted :" Lno #reads the line number to be deleted
		a=`wc -l < $Dir/$Fname` #stores maximum length of file
		Line_no $Lno $a #calls Line_no function for line number exsistence in file
		sed -i "$Lno"d $Dpath/$Fname | echo "Line is deleted" #sed commands delete the mentioned file number from file , echo prints the statemet
