#!/bin/bash

set -x 

# magick identify -format "%[fx:w]x%[fx:h]" ./samples/3264x2448_Animesh_Bhargava.jpg

magick identify -format "%[fx:w]" ./samples/3264x2448_Animesh_Bhargava.jpg

filenam="./samples/3264x2448_Animesh_Bhargava.jpg"
# echo $filenam

width=`magick identify -format "%[fx:w]" ./samples/3024x4032_Jakub_Neskora.jpg`
# height=$(magick identify -format '%h' "$filename")

echo $width
# echo $height
