# The scan package

## Installing the *scan* package

You can use the `install.packages` function to install *scan*.

`install.packages("scan")` will install the stable version.

The current stable release is version `0.51`. Please look at Section *Software reference* for which version of *scan* has been used for creating this book and make sure you have this version or a newer one installed.

R contains many packages and it would significantly slow down if all packages would be loaded into the computer memory at the beginning of each R session. Therefore, after installing *scan* it needs to be activated at the beginning of each session you use R. Usually a session starts when you start the R program and ends with closing R.

For activating a package you need the `library` function. In this case `library(scan)`. You should get something like

scan 0.51 (2021-02-11)\
Single-Case Data Analysis for Single and Multiple Baseline Designs

indicating that everything went smoothly and *scan* is ready for the job.

## Development version of scan

Alternatively, you can compile the development version of *scan* yourself. This might be necessary if the stable version has some bugs or missing functions which has been fixed.

You may need some computer expertise to get the development version running. It is hosted on gitHub at [\<https://github.com/jazznbass/scan\>](https://github.com/jazznbass/scan){.uri}.

For installation, you can apply the `install_github` function from the `devtools` package (make sure you have installed the `devtools` package before):

`devtools::install_github("jazznbass/scan", dependencies = TRUE)`

When you are running a Windows operating system you will probably have to install Rtools before. Rtools contains additional programs (e.g. compilers) that are needed to compile R source packages.

You can find Rtools here: [\<https://cran.r-project.org/bin/windows/Rtools/\>](https://cran.r-project.org/bin/windows/Rtools/){.uri}

## Reporting issues with *scan* and suggesting enhancements

The *scan* gitHub repository at [\<https://github.com/jazznbass/scan\>](https://github.com/jazznbass/scan){.uri} is the ideal place to report bugs, problems, or ideas for enhancing *scan*. Please use the issue tool (direct link: [\<https://github.com/jazznbass/scan/issues\>](https://github.com/jazznbass/scan/issues){.uri}).

We are very thankful for any feedback, corrections, or whatever helps to improve *scan*!

## Functions overview

The functions of the *scan* package can be divided into the following categories:\
*Manage data*, *analyze*, *manipulate*, *simulate*, and *depict*.

Table \@ref(tab:table-functions) gives an overview of all functions.

<table class="table table" style="width: auto !important; margin-left: auto; margin-right: auto; margin-left: auto; margin-right: auto;">
<caption>(\#tab:table-functions)Functions in scan</caption>
 <thead>
  <tr>
   <th style="text-align:left;"> Function </th>
   <th style="text-align:left;"> What it does ... </th>
   <th style="text-align:left;"> Category </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> scdf </td>
   <td style="text-align:left;width: 30em; "> Creates a single-case data-frame </td>
   <td style="text-align:left;"> Manage data </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> select_cases </td>
   <td style="text-align:left;width: 30em; "> Selects specific cases of an scdf </td>
   <td style="text-align:left;"> Manage data </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> subset </td>
   <td style="text-align:left;width: 30em; "> Selects specific measurements or variables of an scdf </td>
   <td style="text-align:left;"> Manage data </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> readSC </td>
   <td style="text-align:left;width: 30em; "> Loads external data into an scdf </td>
   <td style="text-align:left;"> Manage data </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> writeSC </td>
   <td style="text-align:left;width: 30em; "> Writes scdf into an external file </td>
   <td style="text-align:left;"> Manage data </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> scdf_attr </td>
   <td style="text-align:left;width: 30em; "> Gets and sets attributes of an scdf </td>
   <td style="text-align:left;"> Manage data </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; ">  </td>
   <td style="text-align:left;width: 30em; ">  </td>
   <td style="text-align:left;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> plot/plot.scdf </td>
   <td style="text-align:left;width: 30em; "> Creates plots of single cases </td>
   <td style="text-align:left;"> Depict </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> style_plot </td>
   <td style="text-align:left;width: 30em; "> Defines single-case plot graphical styles </td>
   <td style="text-align:left;"> Depict </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> export </td>
   <td style="text-align:left;width: 30em; "> Creates html or latex tables from the output of various can functions </td>
   <td style="text-align:left;"> Depict </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> print/print.sc </td>
   <td style="text-align:left;width: 30em; "> Prints the results of various scan outputs </td>
   <td style="text-align:left;"> Depict </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> print/print.scdf </td>
   <td style="text-align:left;width: 30em; "> Prints an scdf </td>
   <td style="text-align:left;"> Depict </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> summary/summary.scdf </td>
   <td style="text-align:left;width: 30em; "> Summaizes an scdf </td>
   <td style="text-align:left;"> Depict </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; ">  </td>
   <td style="text-align:left;width: 30em; ">  </td>
   <td style="text-align:left;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> autocorr </td>
   <td style="text-align:left;width: 30em; "> Autocorrelations for each phase of each case </td>
   <td style="text-align:left;"> Analyze </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> corrected_tau </td>
   <td style="text-align:left;width: 30em; "> Baseline corrected tau </td>
   <td style="text-align:left;"> Analyze </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> describe </td>
   <td style="text-align:left;width: 30em; "> Descriptive statistics for each phase of each case </td>
   <td style="text-align:left;"> Analyze </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> overlap </td>
   <td style="text-align:left;width: 30em; "> An overview of overlap indeces for each case </td>
   <td style="text-align:left;"> Analyze </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> rci </td>
   <td style="text-align:left;width: 30em; "> Reliable change index </td>
   <td style="text-align:left;"> Analyze </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> rand_test </td>
   <td style="text-align:left;width: 30em; "> Randomization test </td>
   <td style="text-align:left;"> Analyze </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> tau_u </td>
   <td style="text-align:left;width: 30em; "> Tau-U for each case and all cases </td>
   <td style="text-align:left;"> Analyze </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> trend </td>
   <td style="text-align:left;width: 30em; "> Trend analyses for each case </td>
   <td style="text-align:left;"> Analyze </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> plm </td>
   <td style="text-align:left;width: 30em; "> Piecewise linear regression model </td>
   <td style="text-align:left;"> Analyze </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> mplm </td>
   <td style="text-align:left;width: 30em; "> Multivariate piecewise linear regression model </td>
   <td style="text-align:left;"> Analyze </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> hplm </td>
   <td style="text-align:left;width: 30em; "> Hierarchical piecewise linear regression model </td>
   <td style="text-align:left;"> Analyze </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> nap </td>
   <td style="text-align:left;width: 30em; "> Non-overlap of all pairs for each case </td>
   <td style="text-align:left;"> Analyze </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> pnd </td>
   <td style="text-align:left;width: 30em; "> Percentage of non overlapping data for each case </td>
   <td style="text-align:left;"> Analyze </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> pand </td>
   <td style="text-align:left;width: 30em; "> Percentage of all non overlapping data for all cases </td>
   <td style="text-align:left;"> Analyze </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> pem </td>
   <td style="text-align:left;width: 30em; "> Percantage exceeding the mean for each case </td>
   <td style="text-align:left;"> Analyze </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> pet </td>
   <td style="text-align:left;width: 30em; "> Percentage exceeding the trend for each case </td>
   <td style="text-align:left;"> Analyze </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> outlier </td>
   <td style="text-align:left;width: 30em; "> Detect outliers for all cases </td>
   <td style="text-align:left;"> Analyse </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; ">  </td>
   <td style="text-align:left;width: 30em; ">  </td>
   <td style="text-align:left;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> fill_missing </td>
   <td style="text-align:left;width: 30em; "> Interpolate missign values or missing measurement times </td>
   <td style="text-align:left;"> Manipulate </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> ranks </td>
   <td style="text-align:left;width: 30em; "> Covert data into ranked data </td>
   <td style="text-align:left;"> Manipulate </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> shift </td>
   <td style="text-align:left;width: 30em; "> Shifts values by a constant </td>
   <td style="text-align:left;"> Manipulate </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> smooth_cases </td>
   <td style="text-align:left;width: 30em; "> Smoothes time series data </td>
   <td style="text-align:left;"> Manipulate </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> truncate_phase </td>
   <td style="text-align:left;width: 30em; "> Deletes measuremts of phases </td>
   <td style="text-align:left;"> Manipulate </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> standardize </td>
   <td style="text-align:left;width: 30em; "> Standardizes or centres variables </td>
   <td style="text-align:left;"> Manipulate </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; ">  </td>
   <td style="text-align:left;width: 30em; ">  </td>
   <td style="text-align:left;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> design_rSC </td>
   <td style="text-align:left;width: 30em; "> Defines a deisgn of one or multiple single-cases </td>
   <td style="text-align:left;"> Simulate </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> estimate_design </td>
   <td style="text-align:left;width: 30em; "> Extracts a deisgn of one or multiple single-cases from an scdf </td>
   <td style="text-align:left;"> Simulate </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> power_test </td>
   <td style="text-align:left;width: 30em; "> Calculates power and alpha error of a specific analyzes for a specific single-case design </td>
   <td style="text-align:left;"> Simulate </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> rSC </td>
   <td style="text-align:left;width: 30em; "> Creats random single-case studies from a single-case design </td>
   <td style="text-align:left;"> Simulate </td>
  </tr>
</tbody>
</table>

## Changes with version 0.50

### New function names

With version 0.50 scan introduced new names for its functions. The old function names are still usable but they will return a "deprecated" warning telling you to use the new function names.

Table \@ref(tab:table-aliases) shows the changes.

<table class="table table" style="width: auto !important; margin-left: auto; margin-right: auto; margin-left: auto; margin-right: auto;">
<caption>(\#tab:table-aliases)scan privious and current function names.</caption>
 <thead>
  <tr>
   <th style="text-align:left;"> Current function name </th>
   <th style="text-align:left;"> Previous function name </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> autocorr </td>
   <td style="text-align:left;width: 30em; "> autocorrSC </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> corrected_tau </td>
   <td style="text-align:left;width: 30em; "> corrected_tauSC </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> describe [since v0.52] </td>
   <td style="text-align:left;width: 30em; "> describeSC </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> fill_missing </td>
   <td style="text-align:left;width: 30em; "> fillmissingSC </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> outlier </td>
   <td style="text-align:left;width: 30em; "> outlierSC </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> overlap </td>
   <td style="text-align:left;width: 30em; "> overlapSC </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> power_test </td>
   <td style="text-align:left;width: 30em; "> power_testSC </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> rand_test </td>
   <td style="text-align:left;width: 30em; "> randSC; rand.test </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> ranks </td>
   <td style="text-align:left;width: 30em; "> rankSC </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> rci </td>
   <td style="text-align:left;width: 30em; "> rCi; rciSC </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> shift </td>
   <td style="text-align:left;width: 30em; "> shiftSC </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> smooth_cases </td>
   <td style="text-align:left;width: 30em; "> smoothSC </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> style_plot </td>
   <td style="text-align:left;width: 30em; "> style.plotSC; style_plotSC </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> tau_u </td>
   <td style="text-align:left;width: 30em; "> tauUSC </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> trend </td>
   <td style="text-align:left;width: 30em; "> trendSC </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;width: 15em; "> truncate_phase </td>
   <td style="text-align:left;width: 30em; "> truncateSC </td>
  </tr>
</tbody>
</table>

### Change target variables in functions

All functions in R that analyze data now allow for temporarily changing dependent, phase, and measurement-time variables by adding three argument:

`dvar` sets the dependent variable.\
`pvar` sets the phase variable.\
`mvar` sets the measurement-time variable.

For example, `overlap(exampleAB_add, dvar = "depression")` will report overlap parameters for the variable *depression* while `overlap(exampleAB_add)` while take *wellbeing* as the dependent variable (as defined in the scdf).

After finishing the analysis, the variables are set back to their original values as defined in the scdf.
