#!/bin/bash

rm *.epub *.mobi

#mv ~/texmf/tex/latex/createspace/createspace.sty ~/texmf/tex/latex/createspace/createspace.sty.tmp

pandoc -f latex conferencias_bastos.tex -o conferencias_bastos.epub \
  --epub-metadata=metadata.xml --toc -t epub3 --epub-cover-image=ebook_cover.jpg \
  --bibliography=conferencias_bastos.bib --citeproc -M link-citations=true

#mv ~/texmf/tex/latex/createspace/createspace.sty.tmp ~/texmf/tex/latex/createspace/createspace.sty

kindlegen conferencias_bastos.epub

