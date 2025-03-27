

pkg <- c("scan", "scplot", "tibble")

suppressPackageStartupMessages(
  lapply(pkg, 
    function(x) library(x, character.only = TRUE, quietly = TRUE,warn.conflicts = FALSE)
  )
)

knitr::opts_chunk$set(echo = TRUE)
knitr::opts_chunk$set(comment = '')

options("scan.deprecated.warning" = FALSE)
options("scan.print.bar" = "\uFF5C")

options("scan.export.engine" = "gt")


# automatically create a bib database for R packages
knitr::write_bib(c(
  .packages(), 'knitr', 'rmarkdown', 'scan'
), 'packages.bib')

# helper functions --------

print_table <- function(data, caption = NULL, width_cols = c("15em", "30em"), ...) {
  
  knitr::kable(data, linesep = "", booktabs = TRUE, caption = caption,...)  |> 
    kableExtra::kable_styling(
      full_width = FALSE, 
      htmltable_class = "lightable-classic",
      position = "left",
      latex_options = c("repeat_header")
    ) |> 
    kableExtra::column_spec(1, bold = TRUE)  |> 
    kableExtra::column_spec(1, width = width_cols[1])  |> 
    kableExtra::column_spec(2, width = width_cols[2])
  
}

print_table_simple <- function(data) {
  
  knitr::kable(data, format = "pipe")

}


function_structure <- function(name, 
                               skip = c(
                                 "B.start", "phase.design", "lag.max",
                                 "extreme.p", "extreme.d", "missing.p"
                               ),
                               label = NULL,
                               fname = NULL,
                               linebreaks = "auto"){
  
  if (is.null(label)) label <- name
  if (is.null(fname)) fname <- name
  
  args <- names(formals(name))
  values <- formals(name)
  
  if (!is.null(skip)) {
    filter <- !args %in% skip
    args <- args[filter]
    values <- values[filter]
  }
 
  if (identical(linebreaks, "auto")) {
    linebreaks <- if (length(args) > 7) TRUE else FALSE
  }
  
  for(i in seq_along(values)) {
    if (inherits(values[[i]], "character")) 
      values[[i]] <- paste0("\"", values[[i]], "\"")
  }
  
  values <- as.character(values)
  fname <- paste0("**", fname, "**")
  if (!linebreaks)
    out <- paste0(
      fname, "(", 
      paste0("*", args, "* = ", values, collapse = ", "), 
      ")"
    )   
  if (linebreaks)
    out <- paste0(
      fname, "(  \n&nbsp;&nbsp;", 
      paste0("*", args, "* = ", values, collapse = ",  \n&nbsp;&nbsp;"), 
      "  \n)"
    )   

  out <- gsub(" = ,", ",", out)
  out <- gsub(" = )", ")", out)
  out <- gsub("=   \n", "  \n", out)
  
  cat('::: {.callout-tip appearance="simple"}\n')
  cat("# The", label, "function call:\n\n")
  cat(
    #"``` {.r}", "\n",  
    out, "\n", 
    #"```", 
    "\n")
  cat(':::\n\n')

}


###
old_function_structure <- function(name, 
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

