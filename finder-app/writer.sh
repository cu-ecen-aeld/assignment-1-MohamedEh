#!/bin/bash
file=$1
f=${file##*/}
dir="."
dir+=${file%/*}
if [ $# == "2" ];then
	if [ !$(mkdir -p $dir) ];then
		cd $dir
		if [ !$(touch $f) ];then
			echo $2 >> $f
		fi
	else
		exit 2
		
	fi
else
	exit 1

fi
