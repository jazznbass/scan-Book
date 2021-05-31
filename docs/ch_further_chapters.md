# Default settings

Some of the default settings of scan can be changed with the `options()` argument. Table \@ref(tab:table-options) shows a complete list of options and their default values.


```r
# get the current value of an option
getOption("scan.print.rows")
```

```
[1] 15
```

```r
# set option to a different value
options(scan.print.rows = 5, scan.print.scdf.name = FALSE)
print(exampleAB)
```

```
#A single-case data frame with 3 cases

 phase values mt | phase values mt | phase values mt |
     A     54  1 |     A     41  1 |     A     55  1 |
     A     53  2 |     A     59  2 |     A     58  2 |
     A     56  3 |     A     56  3 |     A     53  3 |
     A     58  4 |     A     51  4 |     A     50  4 |
     A     52  5 |     A     52  5 |     A     52  5 |
# ... up to 15 more rows
```

```r
options(scan.print.rows = 15, scan.print.scdf.name = TRUE)
print(exampleAB)
```

```
#A single-case data frame with 3 cases

 Johanna: phase values mt | Karolina: phase values mt | Anja: phase values mt |
              A     54  1 |               A     41  1 |           A     55  1 |
              A     53  2 |               A     59  2 |           A     58  2 |
              A     56  3 |               A     56  3 |           A     53  3 |
              A     58  4 |               A     51  4 |           A     50  4 |
              A     52  5 |               A     52  5 |           A     52  5 |
              B     61  6 |               B     57  6 |           B     55  6 |
              B     62  7 |               B     56  7 |           B     68  7 |
              B     71  8 |               B     67  8 |           B     68  8 |
              B     66  9 |               B     75  9 |           B     81  9 |
              B     64 10 |               B     66 10 |           B     67 10 |
              B     78 11 |               B     69 11 |           B     78 11 |
              B     70 12 |               B     68 12 |           B     73 12 |
              B     74 13 |               B     73 13 |           B     72 13 |
              B     82 14 |               B     77 14 |           B     78 14 |
              B     77 15 |               B     79 15 |           B     81 15 |
# ... up to 5 more rows
```

<table class="table table" style="width: auto !important; margin-left: auto; margin-right: auto; margin-left: auto; margin-right: auto;">
<caption>(\#tab:table-options)Scan Options</caption>
 <thead>
  <tr>
   <th style="text-align:left;"> Option </th>
   <th style="text-align:left;"> Default </th>
   <th style="text-align:left;"> What it does ... </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> scan.print.cases </td>
   <td style="text-align:left;width: 15em; "> "fit" </td>
   <td style="text-align:left;"> Max number of cases printed for scdf objects </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> scan.print.rows </td>
   <td style="text-align:left;width: 15em; "> 15 </td>
   <td style="text-align:left;"> Max number of rows printed for scdf objects </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> scan.print.cols </td>
   <td style="text-align:left;width: 15em; "> "all" </td>
   <td style="text-align:left;"> Max number of columns printed for scdf objects </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> scan.print.digits </td>
   <td style="text-align:left;width: 15em; "> 1 </td>
   <td style="text-align:left;"> Max number of digits printed for scdf objects </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> scan.print.long </td>
   <td style="text-align:left;width: 15em; "> FALSE </td>
   <td style="text-align:left;"> If TRUE, prints scdf objects in long format </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> scan.print.scdf.name </td>
   <td style="text-align:left;width: 15em; "> TRUE </td>
   <td style="text-align:left;"> If TRUE, prints case names of scdf </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> scan.deprecated.warning </td>
   <td style="text-align:left;width: 15em; "> FALSE </td>
   <td style="text-align:left;"> When TRUE returns information on deprecated functions </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> scan.export.kable </td>
   <td style="text-align:left;width: 15em; "> list(digits = 2, linesep = "", booktab = TRUE) </td>
   <td style="text-align:left;"> List with default arguments for the kable argument of the export function </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> scan.export.kable_styling </td>
   <td style="text-align:left;width: 15em; "> list(bootstrap_options = c("bordered", "condensed"), full_width = FALSE, position = "center", latex_options = "hold_position") </td>
   <td style="text-align:left;"> List with default arguments for the kable_styling argument of the export function </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> scan.plot.style </td>
   <td style="text-align:left;width: 15em; "> "grid" </td>
   <td style="text-align:left;"> NA </td>
  </tr>
</tbody>
</table>
