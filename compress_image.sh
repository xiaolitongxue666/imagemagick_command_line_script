#!/bin/bash

set -x 

# Compress
magick convert -resize "652.8x489.6" -strip -quality 75% ./samples/3264x2448_Animesh_Bhargava.jpg ./output/compress_output.jpg


ls -la ./samples/3264x2448_Animesh_Bhargava.jpg 
ls -la ./output/compress_output.jpg

ffplay ./samples/3264x2448_Animesh_Bhargava.jpg &
ffplay ./output/compress_output.jpg


