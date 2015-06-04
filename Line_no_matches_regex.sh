#!/bin/bash
source /home/vagrant/scripts/Check.sh #inherits function from Check.sh script
#Display Line number matches a regex
read -p "Enter directory name :" Dir #reads Directory name 
Dir_check $Dir #calls Dir_check function for directory exsistence
	read -p "Enter File name :" Fname #reads File name
	File_check $Dir/$Fname #calls File_check function for file exsistence
		read -p "Enter regex :" Reg #reads the regex
		grep -n "$Reg" $Dir/$Fname | cut -c1  #grep command finds the regex in the file , -n dispalys line number and its content, awk command prints    only colummn 1 detail
