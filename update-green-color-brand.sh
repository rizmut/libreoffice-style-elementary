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
done
