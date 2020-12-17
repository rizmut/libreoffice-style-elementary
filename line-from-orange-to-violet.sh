#!/bin/bash

find -name "*.svg" -o -name "*.SVG" | while read i;
do 
	echo "This $i file will updated to be violet"
	fname=$( basename "$i")
#	echo "has the name: $fname"
	fdir=$( dirname "$i")
#	echo "and is in the directory: ${fdir##*/}"
	#inkscape -f "$i" -e "${i%.*}.png"
    #sed -i -e 's/#000/#7239b3/g' "$i" #outline violet
    sed -i -e 's/#ce5c00/#7239b3/g' "$i" #dark violet
    sed -i -e 's/#fcaf3e/#a56de2/g' "$i" #dark violet
    sed -i -e 's/#fcaf3e/#cd9ef7/g' "$i" #light violet
    #convert "$i" -quality 75 "$i"
done
