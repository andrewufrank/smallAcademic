#!/bin/bash

# the suggested bash file for a subprocess backend
# changed for input in YAML-metadata
# 	output html

pandoc --filter pandoc-citeproc \
#    --bibliography="$1.bib" \
#    --variable classoption=twocolumn --variable papersize=a4paper" \
#    -s "$1.md" -o "$1.pdf" && \
#    cat "$1.pdf"
    -s "$1.md" -o "$1.html" && \
    cat "$1.html"
