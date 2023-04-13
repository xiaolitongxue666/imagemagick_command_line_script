#!/bin/bash

set -x 

# magick identify -format "%[fx:w]x%[fx:h]" ./samples/3264x2448_Animesh_Bhargava.jpg

magick identify -format "%[fx:w]" ./samples/3264x2448_Animesh_Bhargava.jpg

filenam="./samples/3264x2448_Animesh_Bhargava.jpg"
# echo $filenam

width=`magick identify -format "%[fx:w]" $filenam`
height=`magick identify -format "%[fx:h]" $filenam`

echo $width
echo $height
