
<!-- README.md is generated from README.Rmd. Please edit that file -->

# GENOVA <img src="vignettes/logo_GENOVA.png" align="right" alt="" width="200" />

![GitHub](https://img.shields.io/github/license/robinweide/GENOVA?color=succes?branch=dev)
[![Build
Status](https://travis-ci.org/robinweide/GENOVA.svg?branch=dev)](https://travis-ci.org/robinweide/GENOVA)
[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![minimal R
version](https://img.shields.io/badge/R%3E%3D-3.4.4-succes.svg)](https://cran.r-project.org/)
![GitHub tag (latest by
date)](https://img.shields.io/github/v/tag/robinweide/GENOVA?color=succes)

*Explore the Hi-Cs\!*

The increase in interest for Hi-C methods in the chromatin community has
led to a need for more user-friendly and powerful analysis methods. The
few currently available software packages for Hi-C do not allow a
researcher to quickly summarize and visualize their data. An easy to use
software package, which can generate a comprehensive set of
publication-quality plots, would allow researchers to swiftly go from
raw Hi-C data to interpretable results.

Here, we present **GEN**ome **O**rganisation **V**isual **A**nalytics
(GENOVA): a software suite to perform in-depth analyses on various
levels of genome organisation, using Hi-C data. GENOVA facilitates the
comparison between multiple datasets and supports the majority of
mapping-pipelines.

GENOVA directly reads data from:

  - HiC-pro
  - cooler
  - juicer

## Installation

You can install GENOVA from [GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("robinweide/GENOVA")
```

## Note to long-time users

Version 1.0 will contain a massive overhaul, which will result in
breaking nearly every analysis. To provide legacy support, we made the
[ye olde
lighthouse](https://github.com/robinweide/GENOVA/releases/tag/v0.95)
release. This can be installed with
`devtools::install_github("robinweide/GENOVA@v0.95")`. Furthermore, if
you have custom scripts based on the output of `construct.experiment()`,
you can use v1 and set `legacy=TRUE` in `loadContacts()` to get a
similar output. This, of course, also allows you to load .cooler and
.hic files in pre-v1 versions :+1:.

## Support

We have provided a quite lengthy
[vignette](https://github.com/robinweide/GENOVA/blob/master/vignettes/GENOVA_vignette.pdf),
so please read that first. If there are still unanswered questions,
please use the
[issue-tracker](https://github.com/robinweide/GENOVA/issues).

## Publication

Please see our preprint on bioRxiv: [Hi-C Analysis with GENOVA: a case
study with cohesin
variants](https://www.biorxiv.org/content/early/2021/01/24/2021.01.22.427620).

## Code of conduct

Please note that this project is released with a [Contributor Code of
Conduct](.github/CODE_OF_CONDUCT.md). By participating in this project
you agree to abide by its terms.

-----
