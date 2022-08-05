#!/usr/bin/bash


filename=${1}


###############################################################################
# pdf                                                                         #
###############################################################################
pandoc .pandoc-config.yaml --pdf-engine=pdflatex ${filename}.md \
    -o ./compiled/${filename}.pdf \
    --filter=pandoc-crossref \
    --filter=pandoc-citeproc \
    --standalone \
   -V margin-left=2cm

###############################################################################
# DOCX                                                                        #
###############################################################################
pandoc .pandoc-config.yaml --pdf-engine=pdflatex ${filename}.md \
    -o ./compiled/${filename}.docx \
    --filter=pandoc-crossref \
    --filter=pandoc-citeproc \
    -f +raw_tex \
    --katex

###############################################################################
# HTML                                                                        #
###############################################################################
pandoc .pandoc-config.yaml --pdf-engine=pdflatex ${filename}.md \
    -o ./compiled/${filename}.html \
    --standalone \
    --mathjax \
    --filter=pandoc-crossref \
    --filter=pandoc-citeproc


###############################################################################
# TEX                                                                         #
###############################################################################
 pandoc .pandoc-config.yaml --pdf-engine=pdflatex \
    ${filename}.md -o ${filename}.tex --filter=pandoc-citeproc
