#!/bin/bash

# the suggested bash file for a subprocess backend
# changed for input in YAML-metadata
# 	output html

pandoc --filter pandoc-citeproc \
     --bibliography="BibTexExample.bib" --standalone \
     "$1.markdown" -o "$1.html" && \
     cat "$1.html"

echo "pandoc-citeproc executed" 


