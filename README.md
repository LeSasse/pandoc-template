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
open, so I get a feedback rather quickly.

## Styles
More styles can be obtained at [the Zotero repository](https://www.zotero.org/styles)

## Global configurations

Global configurations can be set in ".pandoc-config.yaml". In particular you
will want to change, "author", "title", "abstract", and "affil"
