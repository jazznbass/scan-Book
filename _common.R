
library(scan)
library(knitr)
library(kableExtra)
library(pander)
library(tidyverse)

knitr::opts_chunk$set(echo = TRUE)
#knitr::opts_chunk$set(tidy = TRUE)
#knitr::opts_chunk$set(tidy.opts=list(width.cutoff=45))
#options(knitr.table.format = "markdown")
#options(width = 76) ##55 for A5

# automatically create a bib database for R packages
knitr::write_bib(c(
  .packages(), 'bookdown', 'knitr', 'rmarkdown', 'scan'
), 'packages.bib')

