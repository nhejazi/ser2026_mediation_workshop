#!/bin/bash
# requires imageMagick

for f in *.pdf; do
  echo "Converting PDF file: $f to ${f%.pdf}.png"
  magick -density 300 $f -quality 100 ${f%.pdf}.png
done
