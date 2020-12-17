#!/bin/bash

find -name "*.svg" -o -name "*.SVG" | while read i;
do 
	echo "This $i file will updated to be blue"
	fname=$( basename "$i")
#	echo "has the name: $fname"
	fdir=$( dirname "$i")
#	echo "and is in the directory: ${fdir##*/}"
	#inkscape -f "$i" -e "${i%.*}.png"
    sed -i -e 's/#000/#002e99/g' "$i" #outline blue
    sed -i -e 's/#dbdbdb/#3689e6/g' "$i" #dark blue
    sed -i -e 's/#f4f4f4/#64baff/g' "$i" #blue
    sed -i -e 's/#e0e0de/#3689e6/g' "$i" #dark blue
    sed -i -e 's/#eeeeec/#64baff/g' "$i" #blue
	#convert "$i" -quality 75 "$i"
done
