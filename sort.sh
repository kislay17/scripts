#!/bin/bash
source /home/vagrant/scripts/Check.sh #inherits function from Check.sh Script
#Print top N lines Sorting in Descending Order
read -p "Enter the file path  :" Path #reads the file path
File_check $Path #calls File_check function for file exsistence
read -p "Enter the no. of lines to be printed after sorting :" Lno #rreads the number of lines to be sorted 
a=`wc -l < $Path`
if test "$Lno" -le "$a";then #checks wether top N line exsist in file or not
	sort -r $Path | awk 'FNR>=1 && FNR<='$Lno  #Sort command will sort the file content , -r will help to sort in reverse order, awk command will print number of lines described by FNR limits
else
	echo "Line number input limit exceeds from maximum file line"
fi
