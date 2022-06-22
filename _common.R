
library(scan)
library(scplot)
library(knitr)
library(kableExtra)
library(pander)
library(tidyverse)

knitr::opts_chunk$set(echo = TRUE)
knitr::opts_chunk$set(comment = '')

options("scan.deprecated.warning" = FALSE)
options("scan.print.bar" = "\uFF5C")

#knitr::opts_chunk$set(tidy = TRUE)
#knitr::opts_chunk$set(tidy.opts=list(width.cutoff=45))
#options(knitr.table.format = "markdown")
#options(width = 76) ##55 for A5

#options("scan.export.kable" = list(digits = 2, linesep =""))
#options("scan.export.kable_styling" = list(
#   bootstrap_options = c("bordered", "condensed"), 
#   full_width = FALSE, position = "left",
#   
#))


# automatically create a bib database for R packages
knitr::write_bib(c(
  .packages(), 'bookdown', 'knitr', 'rmarkdown', 'scan'
), 'packages.bib')

print_table <- function(data, caption, width_cols = c("15em", "30em"), ...) {
  
  kable(data, linesep = "", booktabs = TRUE, caption = caption,...) %>%
    kable_styling(
       full_width = FALSE, 
       htmltable_class = "lightable-classic",
       position = "left",
       latex_options = c("repeat_header")
    ) %>%
    column_spec(1, bold = TRUE) %>%
    column_spec(1, width = width_cols[1]) %>%
    column_spec(2, width = width_cols[2])

}

function_structure <- function(name, 
                               skip = c("B.start", "phase.design", "lag.max",
                                        "extreme.p", "extreme.d", "missing.p"
                                        )) {

   args <- names(formals(name))
   values <- formals(name)
   
   if (!is.null(skip)) {
     filter <- !args %in% skip
     args <- args[filter]
     values <- values[filter]
   }
   
   for(i in seq_along(values)) {
     if (inherits(values[[i]], "character")) values[[i]] <- paste0("\"", values[[i]], "\"")
   }
   
   values <- as.character(values)
   
   out <- paste0(name, "(", paste0(args, " = ", values, collapse = ", "), ")")   
   out <- gsub(" = ,", ",", out)
   out <- gsub(" = )", ")", out)
   
   cat('
```{=html}
<table>
 <tr>
  <td width="75px" style="background-color:#EEEEEE"><img src="images/function.png" alt="" height=49 width=45></td> 
  <td style="background-color:#EEEEEE"><font face="Courier New" size="2">', out, '</font></td>
 </tr>
</table>  
```', "\n\n\n")
   
   cat("\n\n")
 
}
