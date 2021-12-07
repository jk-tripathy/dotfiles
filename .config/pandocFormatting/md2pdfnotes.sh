#!/bin/bash

pandoc "$1" \
    -f markdown-implicit_figures \
    -H ~/.config/pandocFormatting/bulletStyle.tex \
    -H ~/.config/pandocFormatting/quoteStyle.tex \
    -N \
    --toc \
    -V fontsize=11pt \
    -V mainfont="Iosevka" \
    -V monofont="Fira Code" \
    -V geometry:margin=2cm \
    --pdf-engine=xelatex \
    -o "$2"


# -N, --toc
