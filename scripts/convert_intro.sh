#!/bin/bash

# Path to your PDF file
pdf_file="/home/sebi/gh/mlr3_UseR_berlin_2023/mlr3-intro.pdf"

# Loop through each page
for (( page=1; page<100; page++ ))
do
    echo "Converting page $((page+1)) of 25"
    convert -density 600 "${pdf_file}[$page]" -shave 100x120 -quality 100 -transparent white "intro-$page.png"
done

echo "Conversion completed."
