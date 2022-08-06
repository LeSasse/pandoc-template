# Minimal example template for my pandoc markdown set up
## Start a project

The file "draft.md" is essentially a placeholder for the main file used to write
the text using [pandoc's flavour markdown](https://pandoc.org/MANUAL.html#pandocs-markdown).

Once you are ready to check out how the output will look run:

```sh

# "draft" should be the name of your project without file extension
./build.sh draft

```

This will output a ".tex", ".html", ".docx", and ".pdf" file in the compiled
folder. I usually use a text editor on one half, okular pdf viewer on the other
half, which will refresh a file each time "build.sh" is run, even if the file is
open, so I get a feedback rather quickly. See an example of the output [here](https://github.com/LeSasse/pandoc-template/blob/master/compiled/draft.pdf).

## Styles
More styles can be obtained at [the Zotero repository](https://www.zotero.org/styles)

## Global configurations

Global configurations can be set in ".pandoc-config.yaml". In particular you
will want to change, "author", "title", "abstract", and "affil".

## Software

I do all my writing on Ubuntu 20.04.4 LTS. In particular I use:

* [pandoc](https://ubuntu.pkgs.org/20.04/ubuntu-universe-amd64/pandoc_2.5-3build2_amd64.deb.html) with pandoc-types 1.17.5.4, texmath 0.11.2.2, skylighting 0.7.7
* [pandoc-citeproc](https://ubuntu.pkgs.org/20.04/ubuntu-universe-amd64/pandoc-citeproc_0.15.0.1-1build4_amd64.deb.html) 0.15.0.1
* [pandoc-crossref](https://github.com/lierdakil/pandoc-crossref/releases/tag/v0.3.1.0) v0.3.1.0 built with Pandoc v2.1.2, pandoc-types v1.17.3.1 and GHC 8.2.2


