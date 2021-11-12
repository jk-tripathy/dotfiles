#!/bin/bash

pandoc "$1" \
    -f gfm \
    -H ~/.config/pandocFormatting/bulletStyle.tex \
    -H ~/.config/pandocFormatting/quoteStyle.tex \
    -V fontsize=12pt \
    -V mainfont="Noto Sans Light" \
    -V monofont="Iosevka Nerd Font" \
    -V geometry:margin=1in \
    --pdf-engine=xelatex \
    -o "$2"
