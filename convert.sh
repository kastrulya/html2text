#!/bin/bash
# Usage: convert files with html2text.py lib
# Params: 1 - folder from which files are converted
# 		  2 - folder destination
#		  3 - code block language
shopt -s nullglob
folder_from=$1
folder_dest=$2
lang=${3-""}
for f in "$folder_from"/*.htm
do
	echo "Convert $f to md format"
	from=$f
	echo "$from"
	file_to=$(basename $f .htm)
	mkdir -p "$folder_dest"
	path_to="$folder_dest/$file_to.md"
	echo "$path_to"
	python html2text.py "$from" -l $lang > "$path_to" #convert html to md
done