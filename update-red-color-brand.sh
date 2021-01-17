#!/bin/bash

find -name "*.svg" -o -name "*.SVG" | while read i;
do 
	echo "This $i file's red color will updated to follow elementary brand"
	fname=$( basename "$i")
#	echo "has the name: $fname"
	fdir=$( dirname "$i")
    sed -i -e 's/#f8b17e/#ff8c82/g' "$i" #red1
    sed -i -e 's/#e35d4f/#ed5353/g' "$i" #red2
    sed -i -e 's/#c6262e/#c6262e/g' "$i" #red3
    sed -i -e 's/#690b54/#a10705/g' "$i" #red4
    sed -i -e 's/#791235/#7a0000/g' "$i" #edge red
    sed -i -e 's/#dd3b27/#a10705/g' "$i" #red4
    sed -i -e 's/#c7321f/#a10705/g' "$i" #red4
    sed -i -e 's/#b5232a/#a10705/g' "$i" #red4
    sed -i -e 's/#b10000/#7a0000/g' "$i" #edge red
    sed -i -e 's/#2a0303/#7a0000/g' "$i" #edge red
    sed -i -e 's/#ef2929/#ed5353/g' "$i" #red3
    sed -i -e 's/#a40000/#7a0000/g' "$i" #edge red
    sed -i -e 's/#e20000/#c6262e/g' "$i" #red3
    sed -i -e 's/#ffcd7d/#ff8c82/g' "$i" #red1
    sed -i -e 's/#fc8f36/#ed5353/g' "$i" #red2
    sed -i -e 's/#e23a0e/#c6262e/g' "$i" #red3
    sed -i -e 's/#ac441f/#a10705/g' "$i" #red4
    sed -i -e 's/#f89b7e/#ff8c82/g' "$i" #red1
    sed -i -e 's/#e20800/#c6262e/g' "$i" #red3
    sed -i -e 's/#690b2c/#a10705/g' "$i" #red4
done
