Dir_check ()
{	
	if [ -d "$1" ];then
		return 0
	else
		echo "Directory does not exist"	
		exit 0
	fi
}
File_check ()
{
	if test -f $1;then
		return 0
	else
		echo "File doesnot exist"
		exit 0
	fi
}
Line_no()
{
	if test "$1" -le "$2";then
		return 0
	else
		echo "Line number $1 does not exist in file"
		exit 0
	fi
}
