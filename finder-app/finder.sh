#!/bin/bash
filee="."
filee+=$1
file_num=$(find $filee -type f | wc -l)
str_num=0
for file in $(find $filee -type f);do

        ((str_num=str_num+$(grep -c $2 $file))) 
done
echo $file
if [ $# == "2" ]; then
	if [ -d $filee ]; then
		echo "The number of files are $file_num and the number of matching lines are $str_num"
	else
		
		exit 2
	fi
else
	
	exit 1
fi

