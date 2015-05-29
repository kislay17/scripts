#!/bin/bash
# List all files in a directory matching to a patterni
read -p "enter file string and path of directory: " Filename #reads file string
read -p "Enter directory name"  Path #reads file paths
 $Path/ |grep $Filename #ls- list all files and directories of the  path ,| pipeline the output in grep command and it searches file string and its given directory
