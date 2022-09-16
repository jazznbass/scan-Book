filenames <- yaml::read_yaml("_quarto.yml")
filenames <- unlist(filenames$book$chapters, recursive = TRUE)
id <- which(endsWith(filenames, c(".Rmd")) | endsWith(filenames, c(".qmd")))

add <- '{{< include _common.qmd >}}'

for(i in filenames[id]) {
  text <- readLines(i)
  if (text[1] == add) {
    text <- text[-1]
    writeLines(text,i)
  }
  
  #if (text[1] != add) {
  #  text <- c(add, text)
  #  writeLines(text,i)
  #}
}
