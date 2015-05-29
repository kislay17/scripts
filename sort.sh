#!/bin/bash
#Print top N lines Sorting in Descending Order
read -p "Enter the file path with its name :" Path #reads the file path
read -p "Enter the no. of lines to be printed after sorting :" Lno #rreads the number of lines to be sorted 
sort -r $Path | awk 'FNR>=1 && FNR<='$Lno  #Sort command will sort the file content , -r will help to sort in reverse order, awk command will print number of lines described by FNR limits
