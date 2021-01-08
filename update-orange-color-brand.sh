#!/bin/bash

find -name "*.svg" -o -name "*.SVG" | while read i;
do 
	echo "This $i file's orange color will updated to follow elementary brand"
	fname=$( basename "$i")
#	echo "has the name: $fname"
	fdir=$( dirname "$i")
#	echo "and is in the directory: ${fdir##*/}"
	#inkscape -f "$i" -e "${i%.*}.png"
    sed -i -e 's/#71171c/#a62100/g' "$i" #edge orange
    sed -i -e 's/#f9c590/#ffc27d/g' "$i" #orange1
    sed -i -e 's/#f19860/#ffa154/g' "$i" #orange2
    sed -i -e 's/#ce5d36/#f37329/g' "$i" #orange3
    sed -i -e 's/#e2866d/#cc3b02/g' "$i" #orange4
    sed -i -e 's/#ed8137/#cc3b02/g' "$i" #orange4
    sed -i -e 's/#f9c590/#ffc27d/g' "$i" #orange1
    sed -i -e 's/#fc8f36/#ffa154/g' "$i" #orange2
    sed -i -e 's/#e23a0e/#f37329/g' "$i" #orange3
    sed -i -e 's/#ac441f/#cc3b02/g' "$i" #orange4
    #sed -i -e 's/#ce5c00/#cc3b02/g' "$i" #edge orange
    #sed -i -e 's/#fcaf3e/#f37329/g' "$i" #orange
    #convert "$i" -quality 75 "$i"
done
