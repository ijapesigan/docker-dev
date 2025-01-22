#!/bin/bash

set -e

## development packages and cran packages
install2.r --error --skipinstalled -n -1 \
    covr           \
    devtools       \
    distro         \
    ggplot2        \
    knitr          \
    lintr          \
    magick         \
    markdown       \
    microbenchmark \
    pdftools       \
    pkgdown        \
    printr         \
    ragg           \
    RefManageR     \
    rhub           \
    remotes        \
    rmarkdown      \
    rprojroot      \
    shiny          \
    styler         \
    testthat       \
    tidyverse      \
    qpdf           \
    quarto         \
    withr          \
    semmcci        \
    simStateSpace  \
    bootStateSpace \
    betaDelta      \
    betaSandwich   \
    betaNB         \
    betaMC

# vscode project dependencies
install2.r --error --skipmissing --skipinstalled -n -1 \
  languageserver \
  httpgd         \
  styler         \
  lintr
