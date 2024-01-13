#!/bin/bash
file=$1
f=${file##*/}
dir="."
dir+=${file%/*}
if [ $# == "2" ];then
	mkdir -p $dir
	cd $dir
	touch $f
	echo $2 >> $f
else
	exit 1

fi
