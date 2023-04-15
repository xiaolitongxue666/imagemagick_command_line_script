#!/bin/bash

# set -x 

for i in "$@"
do
    # Compress files
    width=`magick identify -format "%[fx:w]" $i`
    height=`magick identify -format "%[fx:h]" $i`
    echo $width
    echo $height

    temp_compressed_input=./output/`uuidgen`.jpg
    echo $temp_compressed_input

    magick convert -resize "642x1389" -strip -quality 75% $i $temp_compressed_input

done
