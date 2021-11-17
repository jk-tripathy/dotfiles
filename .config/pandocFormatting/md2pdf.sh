#!/bin/bash

pandoc "$1" \
    -H ~/.config/pandocFormatting/bulletStyle.tex \
    -H ~/.config/pandocFormatting/quoteStyle.tex \
    -V fontsize=11pt \
    -V mainfont="Iosevka" \
    -V monofont="Fira Code" \
    -V geometry:margin=2cm \
    --pdf-engine=xelatex \
    -o "$2"
