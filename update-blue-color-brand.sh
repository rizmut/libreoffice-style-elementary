#!/bin/bash

find -name "*.svg" -o -name "*.SVG" | while read i;
do 
	echo "This $i file's blue color will updated to follow elementary brand"
	fname=$( basename "$i")
#	echo "has the name: $fname"
	fdir=$( dirname "$i")
    sed -i -e 's/#3465a4/#002e99/g' "$i" #edge blue
    sed -i -e 's/#c2d6eb/#8cd5ff/g' "$i" #light blue
    sed -i -e 's/#e5edf7/#8cd5ff/g' "$i" #light blue
    sed -i -e 's/#90dbec/#8cd5ff/g' "$i" #blue1
    sed -i -e 's/#55c1ec/#64baff/g' "$i" #blue2
    sed -i -e 's/#46aaec/#64baff/g' "$i" #blue2.1
    sed -i -e 's/#2b63a0/#0d52bf/g' "$i" #blue4
    sed -i -e 's/#185f9a/#002e99/g' "$i" #blue4
    sed -i -e 's/#599ec9/#3689e6/g' "$i" #blue5
    sed -i -e 's/#225790/#002e99/g' "$i" #edge blue
    sed -i -e 's/#2f78c8/#0d52bf/g' "$i" #blue6 in eye
    sed -i -e 's/#46aaed/#64baff/g' "$i" #blue6 in eye
    sed -i -e 's/#004372/#002e99/g' "$i" #edge blue
    sed -i -e 's/#00537d/#002e99/g' "$i" #edge blue
    sed -i -e 's/#46a8ea/#64baff/g' "$i" #blue6 in globe
    sed -i -e 's/#0d52bf/#0d52bf/g' "$i" #blue6
    sed -i -e 's/#003651/#002e99/g' "$i" #edge blue
    sed -i -e 's/#0076ce/#0d52bf/g' "$i" #blue6
    sed -i -e 's/#003164/#002e99/g' "$i" #edge blue
done
