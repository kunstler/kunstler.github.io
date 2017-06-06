#' ---
#' layout: page
#' title: Publications
#' ---
#+ r setup, include = FALSE, cache = FALSE
knitr::render_jekyll()
library(RefManageR)
bib <- ReadBib("publications.bib", check = FALSE)
BibOptions(check.entries = FALSE, style = "markdown", cite.style = "authoryear",
           bib.style = "numeric", hyperlink = FALSE, max.names = 100)
#'
#+ r, results = 'asis', echo = FALSE
NoCite(bib = bib)
PrintBibliography(bib, .opts = list(check.entries = FALSE, sorting = "ydnt"))
#'
