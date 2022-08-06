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
    -V margin-left=2.5cm \
    -V margin-right=2.5cm \
    -V margin-top=2.5cm \
    -V margin-bottom=2.5cm


###############################################################################
# DOCX                                                                        #
###############################################################################
pandoc .pandoc-config.yaml ${filename}.md \
    -o ./compiled/${filename}.docx \
    --filter=pandoc-crossref \
    --filter=pandoc-citeproc \


###############################################################################
# HTML                                                                        #
###############################################################################
pandoc .pandoc-config.yaml ${filename}.md \
    -o ./compiled/${filename}.html \
    --standalone \
    --mathjax \
    --filter=pandoc-crossref \
    --filter=pandoc-citeproc


###############################################################################
# TEX                                                                         #
###############################################################################
 pandoc .pandoc-config.yaml \
    ${filename}.md -o ./compiled/${filename}.tex --filter=pandoc-citeproc
