#!/bin/bash
#Filter File acoording to the size and display its name and size
read -p "Enter the file Path :" Path #reads the File path
read -p "Enter the Size below limit :" Limit #reads the lowest size limit for files
find $Path -size +"$Limit"k -ls | awk '{print$7"   "$11}'  #find command finds the file details which satisfies the limit according to provided size and awk command cut the size and name colummn 
