
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

print_table <- function(data, caption) {
  
  #panderOptions("table.split.cells", 60)
  #set.alignment("left","left")
  #pander(out, caption = CAPTION, justify = "left", keep.line.breaks = TRUE)
  kable(data, caption = caption, booktabs = TRUE) %>%
    kable_styling(full_width = FALSE) %>%
    kable_styling(latex_options = c("repeat_header")) %>%
    column_spec(1, bold = TRUE) %>%
    column_spec(2, width = "30em")
}