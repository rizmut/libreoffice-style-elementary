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
    sed -i -e 's/#7bb339/#0f5a00/g' "$i" #edge green
    sed -i -e 's/#aff05f/#9bdb4d/g' "$i" #light green
    sed -i -e 's/#b35039/#cc3b02/g' "$i" #edge orange
    sed -i -e 's/#e2866d/#f37329/g' "$i" #orange
    sed -i -e 's/#f7b19e/#ffa154/g' "$i" #light orange
    sed -i -e 's/#dd9861/#cc3b02/g' "$i" #edge orange
    sed -i -e 's/#e2866d/#f37329/g' "$i" #orange
    sed -i -e 's/#f7b19e/#ffa154/g' "$i" #light orange
    sed -i -e 's/#ce5c00/#cc3b02/g' "$i" #edge orange
    sed -i -e 's/#fcaf3e/#f37329/g' "$i" #orange
    #convert "$i" -quality 75 "$i"
done
