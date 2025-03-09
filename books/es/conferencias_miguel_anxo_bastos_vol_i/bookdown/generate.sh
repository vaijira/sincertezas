#!/usr/bin/env Rscript

bookdown::clean_book()
bookdown::render_book("index.Rmd", "bookdown::bs4_book")
bookdown::render_book("index.Rmd", "bookdown::pdf_book")
bookdown::render_book("index.Rmd", "bookdown::epub_book")
