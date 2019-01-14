#!/bin/bash

# the suggested bash file for a subprocess backend
# changed for input in YAML-metadata
# 	output html

pandoc --filter pandoc-citeproc      "$1.md" -o "$1.html" 
#     --bibliography="BibTexExample.bib" \ # --standalone \

echo $1.html
FF=" {\"body\" : \""
EE="\"}"
PL=`cat $1.html`
 
X="$FF$PL$EE"
echo $X 


