#!/bin/bash

# set -x 

declare -a input_images

# Compress files
for i in "$@"
do
    width=`magick identify -format "%[fx:w]" $i`
    height=`magick identify -format "%[fx:h]" $i`
    echo $width
    echo $height

    temp_compressed_input=./output/`uuidgen`.jpg
    # echo $temp_compressed_input
    input_images+=($temp_compressed_input)

    magick convert -resize "642x1389" -strip -quality 75% $i $temp_compressed_input

done

for input_comressed_image in "${input_images[@]}"
do
    echo $input_comressed_image
done

echo "Array is :"
echo "${input_images[@]}"

echo "Array size is : ${#input_images[@]}"


# Composite images
temp_compressed_output=./output/`uuidgen`.jpg
magick convert -append ${input_images[@]} $temp_compressed_output

ffplay $temp_compressed_output





