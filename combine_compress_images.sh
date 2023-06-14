#!/bin/bash

set -x

magick convert -resize "642x1389" -strip -quality 75% ./samples/single_one.jpeg ./output/compress_output.jpeg

magick convert -append ./output/compress_output.jpeg ./output/combine_compress_images.png

