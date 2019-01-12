#!/bin/bash

# the suggested bash file for a subprocess backend
# changed for input in YAML-metadata
# 	output html

pandoc --filter pandoc-citeproc \
     --bibliography="BibTexExample.bib" --standalone \
     "$1.md" -o "$1.pdf" && \
     cat "$1.pdf"

echo "pandoc-citeproc executed" 

