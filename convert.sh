#!/bin/bash
# Usage: convert files with html2text.py lib
shopt -s nullglob
for f in AndroidSDK/*.htm
do
	echo "Convert $f to md format"
	from=$f
	echo "$from"
	file_to=$(basename $f .htm)
	folder_to="to"
	path_to="$folder_to/$file_to.md"
	echo "$path_to"
	# python save_escape_character.py #escape charecter
	python html2text.py $from > $path_to #convert html to md
	python convert_list.py #convert list to normal view
	# delete comments
done