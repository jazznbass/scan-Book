
# Exporting *scan* results


```{=html}
<table>
 <tr>
  <td width="75px" style="background-color:#EEEEEE"><img src="images/function.png" alt="" height=49 width=45></td> 
  <td style="background-color:#EEEEEE"><font face="Courier New" size="2"> export(object, caption = NA, footnote = NA, filename = NA, kable_styling_options = list(), kable_options = list(), cols, flip = FALSE, round = 2, ...) </font></td>
 </tr>
</table>  
``` 

The `export` function will make it easier to convert the results of your `scan` analyses into tables and descriptions you can add to your documents and presentations. Basically, `export` takes a `scan` object and converts it to an html-table or latex output.

<div class="rmdnote">
<p><code>export</code> it build on top of the <code>knitr</code> and <code>kableextra</code> packages. The list provided in the <code>kable_options</code> argument is implemented in the <code>kable</code> function of <code>knitr</code> and the list provided to the <code>kable_styling_options</code> is implemented in the <code>kable_styling</code> command of the <code>kableExtra</code> package. <code>export</code> sets some defaults for these functions but you can play around and overwrite them.</p>
</div>

`export` works best when used within an rmarkdown file and/or within `RStudio`.  
In `RStudio` 

[xxx to be continued!]

## Single case data files


```r
export(exampleA1B1A2B2_zvt)
```

<table class="table table-bordered table-condensed" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>(\#tab:unnamed-chunk-3)Single case data frame with 3 cases</caption>
 <thead>
<tr>
<th style="border-bottom:hidden;padding-bottom:0; padding-left:3px;padding-right:3px;text-align: center; " colspan="4"><div style="border-bottom: 1px solid #ddd; padding-bottom: 5px; ">Tick</div></th>
<th style="border-bottom:hidden;padding-bottom:0; padding-left:3px;padding-right:3px;text-align: center; " colspan="4"><div style="border-bottom: 1px solid #ddd; padding-bottom: 5px; ">Trick</div></th>
<th style="border-bottom:hidden;padding-bottom:0; padding-left:3px;padding-right:3px;text-align: center; " colspan="4"><div style="border-bottom: 1px solid #ddd; padding-bottom: 5px; ">Track</div></th>
</tr>
  <tr>
   <th style="text-align:center;"> zvt </th>
   <th style="text-align:center;"> d2 </th>
   <th style="text-align:center;"> day </th>
   <th style="text-align:center;"> part </th>
   <th style="text-align:center;"> zvt </th>
   <th style="text-align:center;"> d2 </th>
   <th style="text-align:center;"> day </th>
   <th style="text-align:center;"> part </th>
   <th style="text-align:center;"> zvt </th>
   <th style="text-align:center;"> d2 </th>
   <th style="text-align:center;"> day </th>
   <th style="text-align:center;"> part </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:center;"> 47 </td>
   <td style="text-align:center;"> 131 </td>
   <td style="text-align:center;"> 1 </td>
   <td style="text-align:center;"> A1 </td>
   <td style="text-align:center;"> 51 </td>
   <td style="text-align:center;"> 100 </td>
   <td style="text-align:center;"> 1 </td>
   <td style="text-align:center;"> A1 </td>
   <td style="text-align:center;"> 54 </td>
   <td style="text-align:center;"> 89 </td>
   <td style="text-align:center;"> 1 </td>
   <td style="text-align:center;"> A1 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> 58 </td>
   <td style="text-align:center;"> 134 </td>
   <td style="text-align:center;"> 2 </td>
   <td style="text-align:center;"> A1 </td>
   <td style="text-align:center;"> 58 </td>
   <td style="text-align:center;"> 126 </td>
   <td style="text-align:center;"> 2 </td>
   <td style="text-align:center;"> A1 </td>
   <td style="text-align:center;"> 57 </td>
   <td style="text-align:center;"> 116 </td>
   <td style="text-align:center;"> 2 </td>
   <td style="text-align:center;"> A1 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> 76 </td>
   <td style="text-align:center;"> 141 </td>
   <td style="text-align:center;"> 3 </td>
   <td style="text-align:center;"> A1 </td>
   <td style="text-align:center;"> 70 </td>
   <td style="text-align:center;"> 130 </td>
   <td style="text-align:center;"> 3 </td>
   <td style="text-align:center;"> A1 </td>
   <td style="text-align:center;"> 51 </td>
   <td style="text-align:center;"> 114 </td>
   <td style="text-align:center;"> 3 </td>
   <td style="text-align:center;"> A1 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> 63 </td>
   <td style="text-align:center;"> 141 </td>
   <td style="text-align:center;"> 4 </td>
   <td style="text-align:center;"> B1 </td>
   <td style="text-align:center;"> 65 </td>
   <td style="text-align:center;"> 130 </td>
   <td style="text-align:center;"> 4 </td>
   <td style="text-align:center;"> B1 </td>
   <td style="text-align:center;"> 61 </td>
   <td style="text-align:center;"> 131 </td>
   <td style="text-align:center;"> 4 </td>
   <td style="text-align:center;"> B1 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> 71 </td>
   <td style="text-align:center;"> 140 </td>
   <td style="text-align:center;"> 5 </td>
   <td style="text-align:center;"> B1 </td>
   <td style="text-align:center;"> 67 </td>
   <td style="text-align:center;"> 137 </td>
   <td style="text-align:center;"> 5 </td>
   <td style="text-align:center;"> B1 </td>
   <td style="text-align:center;"> 57 </td>
   <td style="text-align:center;"> 132 </td>
   <td style="text-align:center;"> 5 </td>
   <td style="text-align:center;"> B1 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> 59 </td>
   <td style="text-align:center;"> 140 </td>
   <td style="text-align:center;"> 6 </td>
   <td style="text-align:center;"> B1 </td>
   <td style="text-align:center;"> 63 </td>
   <td style="text-align:center;"> 133 </td>
   <td style="text-align:center;"> 6 </td>
   <td style="text-align:center;"> B1 </td>
   <td style="text-align:center;"> 53 </td>
   <td style="text-align:center;"> 130 </td>
   <td style="text-align:center;"> 6 </td>
   <td style="text-align:center;"> B1 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> 64 </td>
   <td style="text-align:center;"> 138 </td>
   <td style="text-align:center;"> 7 </td>
   <td style="text-align:center;"> A2 </td>
   <td style="text-align:center;"> 64 </td>
   <td style="text-align:center;"> 136 </td>
   <td style="text-align:center;"> 7 </td>
   <td style="text-align:center;"> A2 </td>
   <td style="text-align:center;"> 58 </td>
   <td style="text-align:center;"> 128 </td>
   <td style="text-align:center;"> 7 </td>
   <td style="text-align:center;"> A2 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> 69 </td>
   <td style="text-align:center;"> 140 </td>
   <td style="text-align:center;"> 8 </td>
   <td style="text-align:center;"> A2 </td>
   <td style="text-align:center;"> 70 </td>
   <td style="text-align:center;"> 137 </td>
   <td style="text-align:center;"> 8 </td>
   <td style="text-align:center;"> A2 </td>
   <td style="text-align:center;"> 57 </td>
   <td style="text-align:center;"> 131 </td>
   <td style="text-align:center;"> 8 </td>
   <td style="text-align:center;"> A2 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> 72 </td>
   <td style="text-align:center;"> 141 </td>
   <td style="text-align:center;"> 9 </td>
   <td style="text-align:center;"> A2 </td>
   <td style="text-align:center;"> 70 </td>
   <td style="text-align:center;"> 135 </td>
   <td style="text-align:center;"> 9 </td>
   <td style="text-align:center;"> A2 </td>
   <td style="text-align:center;"> 60 </td>
   <td style="text-align:center;"> 130 </td>
   <td style="text-align:center;"> 9 </td>
   <td style="text-align:center;"> A2 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> 77 </td>
   <td style="text-align:center;"> 140 </td>
   <td style="text-align:center;"> 10 </td>
   <td style="text-align:center;"> B2 </td>
   <td style="text-align:center;"> 68 </td>
   <td style="text-align:center;"> 128 </td>
   <td style="text-align:center;"> 10 </td>
   <td style="text-align:center;"> B2 </td>
   <td style="text-align:center;"> 55 </td>
   <td style="text-align:center;"> 129 </td>
   <td style="text-align:center;"> 10 </td>
   <td style="text-align:center;"> B2 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> 76 </td>
   <td style="text-align:center;"> 138 </td>
   <td style="text-align:center;"> 11 </td>
   <td style="text-align:center;"> B2 </td>
   <td style="text-align:center;"> 69 </td>
   <td style="text-align:center;"> 137 </td>
   <td style="text-align:center;"> 11 </td>
   <td style="text-align:center;"> B2 </td>
   <td style="text-align:center;"> 58 </td>
   <td style="text-align:center;"> 118 </td>
   <td style="text-align:center;"> 11 </td>
   <td style="text-align:center;"> B2 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> 73 </td>
   <td style="text-align:center;"> 140 </td>
   <td style="text-align:center;"> 12 </td>
   <td style="text-align:center;"> B2 </td>
   <td style="text-align:center;"> 70 </td>
   <td style="text-align:center;"> 138 </td>
   <td style="text-align:center;"> 12 </td>
   <td style="text-align:center;"> B2 </td>
   <td style="text-align:center;"> 58 </td>
   <td style="text-align:center;"> 131 </td>
   <td style="text-align:center;"> 12 </td>
   <td style="text-align:center;"> B2 </td>
  </tr>
</tbody>
</table>

## Descriptive stats


```r
res <- describe(GruenkeWilbert2014)
export(res)
```

<table class="table table-bordered table-condensed" style="width: auto !important; margin-left: auto; margin-right: auto;border-bottom: 0;">
<caption>(\#tab:unnamed-chunk-4)Descriptive statistics</caption>
 <thead>
<tr>
<th style="empty-cells: hide;border-bottom:hidden;" colspan="1"></th>
<th style="border-bottom:hidden;padding-bottom:0; padding-left:3px;padding-right:3px;text-align: center; " colspan="2"><div style="border-bottom: 1px solid #ddd; padding-bottom: 5px; ">n</div></th>
<th style="border-bottom:hidden;padding-bottom:0; padding-left:3px;padding-right:3px;text-align: center; " colspan="2"><div style="border-bottom: 1px solid #ddd; padding-bottom: 5px; ">Missing</div></th>
<th style="border-bottom:hidden;padding-bottom:0; padding-left:3px;padding-right:3px;text-align: center; " colspan="2"><div style="border-bottom: 1px solid #ddd; padding-bottom: 5px; ">M</div></th>
<th style="border-bottom:hidden;padding-bottom:0; padding-left:3px;padding-right:3px;text-align: center; " colspan="2"><div style="border-bottom: 1px solid #ddd; padding-bottom: 5px; ">Median</div></th>
<th style="border-bottom:hidden;padding-bottom:0; padding-left:3px;padding-right:3px;text-align: center; " colspan="2"><div style="border-bottom: 1px solid #ddd; padding-bottom: 5px; ">SD</div></th>
<th style="border-bottom:hidden;padding-bottom:0; padding-left:3px;padding-right:3px;text-align: center; " colspan="2"><div style="border-bottom: 1px solid #ddd; padding-bottom: 5px; ">MAD</div></th>
<th style="border-bottom:hidden;padding-bottom:0; padding-left:3px;padding-right:3px;text-align: center; " colspan="2"><div style="border-bottom: 1px solid #ddd; padding-bottom: 5px; ">Min</div></th>
<th style="border-bottom:hidden;padding-bottom:0; padding-left:3px;padding-right:3px;text-align: center; " colspan="2"><div style="border-bottom: 1px solid #ddd; padding-bottom: 5px; ">Max</div></th>
<th style="border-bottom:hidden;padding-bottom:0; padding-left:3px;padding-right:3px;text-align: center; " colspan="2"><div style="border-bottom: 1px solid #ddd; padding-bottom: 5px; ">Trend</div></th>
</tr>
  <tr>
   <th style="text-align:left;">   </th>
   <th style="text-align:center;"> A </th>
   <th style="text-align:center;"> B </th>
   <th style="text-align:center;"> A </th>
   <th style="text-align:center;"> B </th>
   <th style="text-align:center;"> A </th>
   <th style="text-align:center;"> B </th>
   <th style="text-align:center;"> A </th>
   <th style="text-align:center;"> B </th>
   <th style="text-align:center;"> A </th>
   <th style="text-align:center;"> B </th>
   <th style="text-align:center;"> A </th>
   <th style="text-align:center;"> B </th>
   <th style="text-align:center;"> A </th>
   <th style="text-align:center;"> B </th>
   <th style="text-align:center;"> A </th>
   <th style="text-align:center;"> B </th>
   <th style="text-align:center;"> A </th>
   <th style="text-align:center;"> B </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Anton </td>
   <td style="text-align:center;"> 4 </td>
   <td style="text-align:center;"> 14 </td>
   <td style="text-align:center;"> 0 </td>
   <td style="text-align:center;"> 0 </td>
   <td style="text-align:center;"> 5.00 </td>
   <td style="text-align:center;"> 9.14 </td>
   <td style="text-align:center;"> 5 </td>
   <td style="text-align:center;"> 9 </td>
   <td style="text-align:center;"> 0.82 </td>
   <td style="text-align:center;"> 0.77 </td>
   <td style="text-align:center;"> 0.74 </td>
   <td style="text-align:center;"> 1.48 </td>
   <td style="text-align:center;"> 4 </td>
   <td style="text-align:center;"> 8 </td>
   <td style="text-align:center;"> 6 </td>
   <td style="text-align:center;"> 10 </td>
   <td style="text-align:center;"> -0.40 </td>
   <td style="text-align:center;"> 0.03 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Bob </td>
   <td style="text-align:center;"> 7 </td>
   <td style="text-align:center;"> 11 </td>
   <td style="text-align:center;"> 0 </td>
   <td style="text-align:center;"> 0 </td>
   <td style="text-align:center;"> 3.00 </td>
   <td style="text-align:center;"> 8.82 </td>
   <td style="text-align:center;"> 3 </td>
   <td style="text-align:center;"> 9 </td>
   <td style="text-align:center;"> 0.82 </td>
   <td style="text-align:center;"> 0.87 </td>
   <td style="text-align:center;"> 1.48 </td>
   <td style="text-align:center;"> 0.00 </td>
   <td style="text-align:center;"> 2 </td>
   <td style="text-align:center;"> 7 </td>
   <td style="text-align:center;"> 4 </td>
   <td style="text-align:center;"> 10 </td>
   <td style="text-align:center;"> 0.04 </td>
   <td style="text-align:center;"> 0.04 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Paul </td>
   <td style="text-align:center;"> 6 </td>
   <td style="text-align:center;"> 12 </td>
   <td style="text-align:center;"> 0 </td>
   <td style="text-align:center;"> 0 </td>
   <td style="text-align:center;"> 3.83 </td>
   <td style="text-align:center;"> 8.83 </td>
   <td style="text-align:center;"> 4 </td>
   <td style="text-align:center;"> 9 </td>
   <td style="text-align:center;"> 0.75 </td>
   <td style="text-align:center;"> 0.72 </td>
   <td style="text-align:center;"> 0.74 </td>
   <td style="text-align:center;"> 0.74 </td>
   <td style="text-align:center;"> 3 </td>
   <td style="text-align:center;"> 8 </td>
   <td style="text-align:center;"> 5 </td>
   <td style="text-align:center;"> 10 </td>
   <td style="text-align:center;"> -0.26 </td>
   <td style="text-align:center;"> 0.02 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Robert </td>
   <td style="text-align:center;"> 8 </td>
   <td style="text-align:center;"> 10 </td>
   <td style="text-align:center;"> 0 </td>
   <td style="text-align:center;"> 0 </td>
   <td style="text-align:center;"> 4.12 </td>
   <td style="text-align:center;"> 8.90 </td>
   <td style="text-align:center;"> 4 </td>
   <td style="text-align:center;"> 9 </td>
   <td style="text-align:center;"> 0.83 </td>
   <td style="text-align:center;"> 0.99 </td>
   <td style="text-align:center;"> 1.48 </td>
   <td style="text-align:center;"> 1.48 </td>
   <td style="text-align:center;"> 3 </td>
   <td style="text-align:center;"> 7 </td>
   <td style="text-align:center;"> 5 </td>
   <td style="text-align:center;"> 10 </td>
   <td style="text-align:center;"> -0.06 </td>
   <td style="text-align:center;"> -0.14 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Sam </td>
   <td style="text-align:center;"> 5 </td>
   <td style="text-align:center;"> 13 </td>
   <td style="text-align:center;"> 0 </td>
   <td style="text-align:center;"> 0 </td>
   <td style="text-align:center;"> 4.60 </td>
   <td style="text-align:center;"> 9.08 </td>
   <td style="text-align:center;"> 5 </td>
   <td style="text-align:center;"> 9 </td>
   <td style="text-align:center;"> 0.55 </td>
   <td style="text-align:center;"> 0.86 </td>
   <td style="text-align:center;"> 0.00 </td>
   <td style="text-align:center;"> 1.48 </td>
   <td style="text-align:center;"> 4 </td>
   <td style="text-align:center;"> 8 </td>
   <td style="text-align:center;"> 5 </td>
   <td style="text-align:center;"> 10 </td>
   <td style="text-align:center;"> 0.10 </td>
   <td style="text-align:center;"> 0.03 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Tim </td>
   <td style="text-align:center;"> 4 </td>
   <td style="text-align:center;"> 14 </td>
   <td style="text-align:center;"> 0 </td>
   <td style="text-align:center;"> 0 </td>
   <td style="text-align:center;"> 3.00 </td>
   <td style="text-align:center;"> 9.00 </td>
   <td style="text-align:center;"> 3 </td>
   <td style="text-align:center;"> 9 </td>
   <td style="text-align:center;"> 0.82 </td>
   <td style="text-align:center;"> 0.96 </td>
   <td style="text-align:center;"> 0.74 </td>
   <td style="text-align:center;"> 1.48 </td>
   <td style="text-align:center;"> 2 </td>
   <td style="text-align:center;"> 7 </td>
   <td style="text-align:center;"> 4 </td>
   <td style="text-align:center;"> 10 </td>
   <td style="text-align:center;"> -0.60 </td>
   <td style="text-align:center;"> 0.00 </td>
  </tr>
</tbody>
<tfoot>
<tr><td style="padding: 0; " colspan="100%"><span style="font-style: italic;">Note: </span></td></tr>
<tr><td style="padding: 0; " colspan="100%">
<sup></sup> n = Number of measurements; Missing = Number of missing values; M = Mean; Median = Median; SD = Standard deviation; MAD = Median average deviation; Min = Minimum; Max = Maximum; Trend = Slope of dependent variable regressed on measurement-time.</td></tr>
</tfoot>
</table>

## Overlap indices


```r
res <- overlap(exampleA1B1A2B2_zvt, phases = list(c(1,3),c(2,4)))
export(res, flip = TRUE)
```

<table class="table table-bordered table-condensed" style="width: auto !important; margin-left: auto; margin-right: auto;border-bottom: 0;">
<caption>(\#tab:unnamed-chunk-5)Overlap indices. Comparing phases A1 + A2 against phases B1 + B2</caption>
 <thead>
  <tr>
   <th style="text-align:left;">   </th>
   <th style="text-align:right;"> Tick </th>
   <th style="text-align:right;"> Trick </th>
   <th style="text-align:right;"> Track </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> PND </td>
   <td style="text-align:right;"> 16.67 </td>
   <td style="text-align:right;"> 0.00 </td>
   <td style="text-align:right;"> 16.67 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> PEM </td>
   <td style="text-align:right;"> 66.67 </td>
   <td style="text-align:right;"> 50.00 </td>
   <td style="text-align:right;"> 50.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> PET </td>
   <td style="text-align:right;"> 66.67 </td>
   <td style="text-align:right;"> 33.33 </td>
   <td style="text-align:right;"> 33.33 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> NAP </td>
   <td style="text-align:right;"> 68.06 </td>
   <td style="text-align:right;"> 51.39 </td>
   <td style="text-align:right;"> 58.33 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> NAP-R </td>
   <td style="text-align:right;"> 36.11 </td>
   <td style="text-align:right;"> 2.78 </td>
   <td style="text-align:right;"> 16.67 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> PAND </td>
   <td style="text-align:right;"> 66.67 </td>
   <td style="text-align:right;"> 50.00 </td>
   <td style="text-align:right;"> 54.17 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Tau-U </td>
   <td style="text-align:right;"> 0.14 </td>
   <td style="text-align:right;"> 0.03 </td>
   <td style="text-align:right;"> -0.03 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Base_Tau </td>
   <td style="text-align:right;"> 0.27 </td>
   <td style="text-align:right;"> 0.02 </td>
   <td style="text-align:right;"> 0.13 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Delta M </td>
   <td style="text-align:right;"> 5.50 </td>
   <td style="text-align:right;"> 3.17 </td>
   <td style="text-align:right;"> 0.83 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Delta Trend </td>
   <td style="text-align:right;"> -0.31 </td>
   <td style="text-align:right;"> -1.10 </td>
   <td style="text-align:right;"> -0.74 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> SMD </td>
   <td style="text-align:right;"> 0.52 </td>
   <td style="text-align:right;"> 0.40 </td>
   <td style="text-align:right;"> 0.26 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Hedges g </td>
   <td style="text-align:right;"> 0.48 </td>
   <td style="text-align:right;"> 0.37 </td>
   <td style="text-align:right;"> 0.24 </td>
  </tr>
</tbody>
<tfoot>
<tr><td style="padding: 0; " colspan="100%"><span style="font-style: italic;">Note: </span></td></tr>
<tr><td style="padding: 0; " colspan="100%">
<sup></sup> PND = Percentage Non-Overlapping Data; PEM = Percentage Exceeding the Median; PET = Percentage Exceeding the Trend; NAP = Nonoverlap of all pairs; NAP-R = NAP rescaled; PAND = Percentage all nonoverlapping data;Tau U = Parker's Tau-U; Base Tau = Baseline corrected Tau; Delta M = Mean difference between phases; Delta Trend = Trend difference between phases; SMD = Standardized Mean Difference; Hedges g = Corrected SMD.</td></tr>
</tfoot>
</table>

## Piecewise linear models


```r
res <- plm(exampleA1B1A2B2$Pawel)
export(res)
```

<table class="table table-bordered table-condensed" style="width: auto !important; margin-left: auto; margin-right: auto;border-bottom: 0;">
<caption>(\#tab:unnamed-chunk-6)Piecewise-regression model predicting variable 'values'</caption>
 <thead>
<tr>
<th style="empty-cells: hide;border-bottom:hidden;" colspan="2"></th>
<th style="border-bottom:hidden;padding-bottom:0; padding-left:3px;padding-right:3px;text-align: center; " colspan="2"><div style="border-bottom: 1px solid #ddd; padding-bottom: 5px; ">CI(95%)</div></th>
<th style="empty-cells: hide;border-bottom:hidden;" colspan="4"></th>
</tr>
  <tr>
   <th style="text-align:left;"> Parameter </th>
   <th style="text-align:right;"> B </th>
   <th style="text-align:right;"> 2.5% </th>
   <th style="text-align:right;"> 97.5% </th>
   <th style="text-align:right;"> SE </th>
   <th style="text-align:right;"> t </th>
   <th style="text-align:right;"> p </th>
   <th style="text-align:right;"> Delta R² </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Intercept </td>
   <td style="text-align:right;"> 12.47 </td>
   <td style="text-align:right;"> 4.90 </td>
   <td style="text-align:right;"> 20.03 </td>
   <td style="text-align:right;"> 3.86 </td>
   <td style="text-align:right;"> 3.23 </td>
   <td style="text-align:right;"> &lt;.01 </td>
   <td style="text-align:right;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Trend mt </td>
   <td style="text-align:right;"> 0.22 </td>
   <td style="text-align:right;"> -0.99 </td>
   <td style="text-align:right;"> 1.44 </td>
   <td style="text-align:right;"> 0.62 </td>
   <td style="text-align:right;"> 0.36 </td>
   <td style="text-align:right;"> .72 </td>
   <td style="text-align:right;"> .00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Level phase B1 </td>
   <td style="text-align:right;"> 17.69 </td>
   <td style="text-align:right;"> 7.71 </td>
   <td style="text-align:right;"> 27.67 </td>
   <td style="text-align:right;"> 5.09 </td>
   <td style="text-align:right;"> 3.48 </td>
   <td style="text-align:right;"> &lt;.01 </td>
   <td style="text-align:right;"> .14 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Level phase A2 </td>
   <td style="text-align:right;"> 2.58 </td>
   <td style="text-align:right;"> -16.96 </td>
   <td style="text-align:right;"> 22.12 </td>
   <td style="text-align:right;"> 9.97 </td>
   <td style="text-align:right;"> 0.26 </td>
   <td style="text-align:right;"> .79 </td>
   <td style="text-align:right;"> .00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Level phase B2 </td>
   <td style="text-align:right;"> 12.54 </td>
   <td style="text-align:right;"> -18.46 </td>
   <td style="text-align:right;"> 43.54 </td>
   <td style="text-align:right;"> 15.82 </td>
   <td style="text-align:right;"> 0.79 </td>
   <td style="text-align:right;"> .43 </td>
   <td style="text-align:right;"> .01 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Slope phase B1 </td>
   <td style="text-align:right;"> -1.41 </td>
   <td style="text-align:right;"> -3.13 </td>
   <td style="text-align:right;"> 0.32 </td>
   <td style="text-align:right;"> 0.88 </td>
   <td style="text-align:right;"> -1.60 </td>
   <td style="text-align:right;"> .11 </td>
   <td style="text-align:right;"> .03 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Slope phase A2 </td>
   <td style="text-align:right;"> -1.10 </td>
   <td style="text-align:right;"> -2.83 </td>
   <td style="text-align:right;"> 0.62 </td>
   <td style="text-align:right;"> 0.88 </td>
   <td style="text-align:right;"> -1.25 </td>
   <td style="text-align:right;"> .21 </td>
   <td style="text-align:right;"> .02 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Slope phase B2 </td>
   <td style="text-align:right;"> -1.08 </td>
   <td style="text-align:right;"> -2.81 </td>
   <td style="text-align:right;"> 0.64 </td>
   <td style="text-align:right;"> 0.88 </td>
   <td style="text-align:right;"> -1.23 </td>
   <td style="text-align:right;"> .22 </td>
   <td style="text-align:right;"> .02 </td>
  </tr>
</tbody>
<tfoot>
<tr><td style="padding: 0; " colspan="100%"><span style="font-style: italic;">Note: </span></td></tr>
<tr><td style="padding: 0; " colspan="100%">
<sup></sup> F(7, 32) = 7.86; p &lt;.001; R² = 0.632; Adjusted R² = 0.552</td></tr>
</tfoot>
</table>

## Hierarchical piecewise regressions


```r
res <- hplm(exampleAB_50, data.l2 = exampleAB_50.l2, lr.test = TRUE, random.slopes = TRUE)
export(res)
```

<table class="table table-bordered table-condensed" style="width: auto !important; margin-left: auto; margin-right: auto;border-bottom: 0;">
<caption>(\#tab:unnamed-chunk-7)Hierarchical Piecewise Linear Regression predicting variable 'values'</caption>
 <thead>
  <tr>
   <th style="text-align:left;"> Parameter </th>
   <th style="text-align:right;"> B </th>
   <th style="text-align:right;"> SE </th>
   <th style="text-align:right;"> df </th>
   <th style="text-align:right;"> t </th>
   <th style="text-align:right;"> p </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Intercept </td>
   <td style="text-align:right;"> 51.72 </td>
   <td style="text-align:right;"> 1.35 </td>
   <td style="text-align:right;"> 1281 </td>
   <td style="text-align:right;"> 38.38 </td>
   <td style="text-align:right;"> &lt;.001 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Trend mt </td>
   <td style="text-align:right;"> 0.64 </td>
   <td style="text-align:right;"> 0.13 </td>
   <td style="text-align:right;"> 1281 </td>
   <td style="text-align:right;"> 5.08 </td>
   <td style="text-align:right;"> &lt;.001 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Level phase B </td>
   <td style="text-align:right;"> 13.09 </td>
   <td style="text-align:right;"> 0.76 </td>
   <td style="text-align:right;"> 1281 </td>
   <td style="text-align:right;"> 17.18 </td>
   <td style="text-align:right;"> &lt;.001 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Slope phase B </td>
   <td style="text-align:right;"> 0.89 </td>
   <td style="text-align:right;"> 0.13 </td>
   <td style="text-align:right;"> 1281 </td>
   <td style="text-align:right;"> 6.86 </td>
   <td style="text-align:right;"> &lt;.001 </td>
  </tr>
  <tr grouplength="6"><td colspan="6" style="border-bottom: 1px solid;"><strong>Random effects</strong></td></tr>
<tr>
   <td style="text-align:left;padding-left: 2em;font-weight: bold;color: black !important;" indentlevel="1">  </td>
   <td style="text-align:right;font-weight: bold;color: black !important;"> SD </td>
   <td style="text-align:right;font-weight: bold;color: black !important;"> L </td>
   <td style="text-align:right;font-weight: bold;color: black !important;"> df </td>
   <td style="text-align:right;font-weight: bold;color: black !important;"> p </td>
   <td style="text-align:right;font-weight: bold;color: black !important;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;padding-left: 2em;" indentlevel="1"> Intercept </td>
   <td style="text-align:right;"> 8.69 </td>
   <td style="text-align:right;"> 194.8 </td>
   <td style="text-align:right;"> 4 </td>
   <td style="text-align:right;"> &lt;.001 </td>
   <td style="text-align:right;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;padding-left: 2em;" indentlevel="1"> Trend mt </td>
   <td style="text-align:right;"> 0.34 </td>
   <td style="text-align:right;"> 4.8 </td>
   <td style="text-align:right;"> 4 </td>
   <td style="text-align:right;"> .30 </td>
   <td style="text-align:right;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;padding-left: 2em;" indentlevel="1"> Level phase B </td>
   <td style="text-align:right;"> 3.65 </td>
   <td style="text-align:right;"> 28.25 </td>
   <td style="text-align:right;"> 4 </td>
   <td style="text-align:right;"> &lt;.001 </td>
   <td style="text-align:right;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;padding-left: 2em;" indentlevel="1"> Slope phase B </td>
   <td style="text-align:right;"> 0.36 </td>
   <td style="text-align:right;"> 4.81 </td>
   <td style="text-align:right;"> 4 </td>
   <td style="text-align:right;"> .30 </td>
   <td style="text-align:right;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;padding-left: 2em;" indentlevel="1"> Residual </td>
   <td style="text-align:right;"> 4.99 </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;"> NA </td>
   <td style="text-align:right;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;"> AIC </td>
   <td style="text-align:right;"> 8403.5 </td>
   <td style="text-align:right;">  </td>
   <td style="text-align:right;">  </td>
   <td style="text-align:right;">  </td>
   <td style="text-align:right;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;"> BIC </td>
   <td style="text-align:right;"> 8481.5 </td>
   <td style="text-align:right;">  </td>
   <td style="text-align:right;">  </td>
   <td style="text-align:right;">  </td>
   <td style="text-align:right;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ICC </td>
   <td style="text-align:right;"> 0.2 </td>
   <td style="text-align:right;"> L = 192 </td>
   <td style="text-align:right;"> p &lt;.001 </td>
   <td style="text-align:right;">  </td>
   <td style="text-align:right;">  </td>
  </tr>
</tbody>
<tfoot>
<tr><td style="padding: 0; " colspan="100%"><span style="font-style: italic;">Note: </span></td></tr>
<tr><td style="padding: 0; " colspan="100%">
<sup></sup> Estimation method ML; Slope estimation method: B&amp;L-B; 50 cases</td></tr>
</tfoot>
</table>
