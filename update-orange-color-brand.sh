#!/bin/bash

find -name "*.svg" -o -name "*.SVG" | while read i;
do 
	echo "This $i file's orange color will updated to follow elementary brand"
	fname=$( basename "$i")
#	echo "has the name: $fname"
	fdir=$( dirname "$i")
#	echo "and is in the directory: ${fdir##*/}"
	#inkscape -f "$i" -e "${i%.*}.png"
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
