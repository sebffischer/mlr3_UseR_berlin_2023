#!/bin/bash

# Path to your PDF file
pdf_file="/home/sebi/gh/mlr3_UseR_berlin_2023/mlr3tuning.pdf"

# Loop through each page
for (( page=8; page<26; page++ ))
do
    echo "Converting page $((page+1)) of 25"
    convert -density 600 "${pdf_file}[$page]" -shave 100x120 -quality 100 -transparent white "tuning-$page.png"
done

echo "Conversion completed."
