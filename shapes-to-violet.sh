#!/bin/bash

find -name "*.svg" -o -name "*.SVG" | while read i;
do 
	echo "This $i file will updated to be violet"
	fname=$( basename "$i")
#	echo "has the name: $fname"
	fdir=$( dirname "$i")
#	echo "and is in the directory: ${fdir##*/}"
	#inkscape -f "$i" -e "${i%.*}.png"
    sed -i -e 's/#000/#7239b3/g' "$i" #outline violet
    sed -i -e 's/#dbdbdb/#a56de2/g' "$i" #dark violet
    sed -i -e 's/#f4f4f4/#cd9ef7/g' "$i" #violet
    sed -i -e 's/#e0e0de/#a56de2/g' "$i" #dark violet
    sed -i -e 's/#eeeeec/#cd9ef7/g' "$i" #violet
	#convert "$i" -quality 75 "$i"
done
