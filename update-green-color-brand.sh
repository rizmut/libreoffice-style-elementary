#!/bin/bash

find -name "*.svg" -o -name "*.SVG" | while read i;
do 
	echo "This $i file's green color will updated to follow elementary brand"
	fname=$( basename "$i")
#	echo "has the name: $fname"
	fdir=$( dirname "$i")
    sed -i -e 's/#cdf87e/#d1ff82/g' "$i" #green1
    sed -i -e 's/#a2e34f/#9bdb4d/g' "$i" #green2
    sed -i -e 's/#1d7e0d/#3a9104/g' "$i" #green4
    sed -i -e 's/#0f5a00/#206b00/g' "$i" #green5 (edge)
    sed -i -e 's/#4e9a06/#206b00/g' "$i" #green6 (edge)
    sed -i -e 's/#81d72c/#9bdb4d/g' "$i" #green7 (edge)
    sed -i -e 's/#85f619/#d1ff82/g' "$i" #green8 light
    sed -i -e 's/#7bb339/#206b00/g' "$i" #edge green
    sed -i -e 's/#aff05f/#9bdb4d/g' "$i" #light green
    sed -i -e 's/#425a2d/#206b00/g' "$i" #edge green (mimetypes)
    sed -i -e 's/#7f956d/#3a9104/g' "$i" #edge green (mimetypes)
    sed -i -e 's/#b5cc85/#d1ff82/g' "$i" #green1 (mimetypes)
    sed -i -e 's/#9abe74/#9bdb4d/g' "$i" #green2 (mimetypes)
    sed -i -e 's/#669f4d/#68b723/g' "$i" #green3 (mimetypes)
    sed -i -e 's/#47892b/#3a9104/g' "$i" #green4 (mimetypes)
    sed -i -e 's/#bdff69/#d1ff82/g' "$i" #green1 (mimetypes2)
    sed -i -e 's/#8ed451/#9bdb4d/g' "$i" #green2 (mimetypes2)
    sed -i -e 's/#58aa30/#68b723/g' "$i" #green3 (mimetypes2)
    sed -i -e 's/#2a6c1f/#3a9104/g' "$i" #green4 (mimetypes2)
    sed -i -e 's/#b7d095/#9bdb4d/g' "$i" #green2 (mimetypes2)
    
done
