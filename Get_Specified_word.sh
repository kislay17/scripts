#!/bin/bash
source /home/vagrant/scripts/Check.sh #inherits function from Check.sh script
#Get a specific word at a  specific line and at specific position
read -p "Enter Directory path ;" Dir #reads Directory path
Dir_check $Dir #calls Dir_check function for Directory exsistence
	read -p "Enter file name :" Fname #reads file name
	File_check $Dir/$Fname #calls file_check function for file exsistence
		a=`wc -l <$Dir/$Fname` #a stores max no. of line of file
		read -p "Enter line number :" Lno #reads line number
		Line_no $Lno $a #calls Line_no function for line number exsistence in file
			read -p "Enter word position :" Rp #reads word position
			b=`sed -n "$Lno"p $Dir/$Fname | wc -w` #stores number of words in afile
			if test "$Rp" -le "$b";then #checks if specified word is present or not
			#if yes 
				sed -n "$Lno"p $Dir/$Fname|awk "{print $"$Rp"}" #sed command finds specific line number ,awk command prints the specific colummn
			else
			#if no
				echo "Specified word position doesnot exsist"
			fi
