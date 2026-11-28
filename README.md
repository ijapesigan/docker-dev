
<!-- README.md is generated from .setup/readme/README.Rmd, which rProject's
docker template writes. Edit .setup/readme/description.md, scripts/cran.txt,
scripts/github.txt, or .setup/scripts/project.R instead. -->

# ijapesigan/dev

Updated 2026-11-28 21:26:10 UTC.

<!-- badges: start -->
[![Make Project](https://github.com/ijapesigan/docker-dev/actions/workflows/make.yml/badge.svg)](https://github.com/ijapesigan/docker-dev/actions/workflows/make.yml)
[![Docker Build and Push Dev [multi] (Daily)](https://github.com/ijapesigan/docker-dev/actions/workflows/docker-build-push-daily-multi-dev.yml/badge.svg)](https://github.com/ijapesigan/docker-dev/actions/workflows/docker-build-push-daily-multi-dev.yml)
[![Docker Build and Push [multi]](https://github.com/ijapesigan/docker-dev/actions/workflows/docker-build-push-multi.yml/badge.svg)](https://github.com/ijapesigan/docker-dev/actions/workflows/docker-build-push-multi.yml)
[![Non-ASCII Check](https://github.com/ijapesigan/docker-dev/actions/workflows/non-ascii-check.yml/badge.svg)](https://github.com/ijapesigan/docker-dev/actions/workflows/non-ascii-check.yml)
[![Shell Check](https://github.com/ijapesigan/docker-dev/actions/workflows/shellcheck.yml/badge.svg)](https://github.com/ijapesigan/docker-dev/actions/workflows/shellcheck.yml)
<!-- badges: end -->

## Description

The development image of the daily chain (`ijapesigan/tidyverse` to
`ijapesigan/docs`): built on `ijapesigan/missing`, with the R
development tools and rProject. When its daily build succeeds it starts
`ijapesigan/docs` and `ijapesigan/rocker`.

Based on `ijapesigan/missing:latest`; built for linux/amd64 and
linux/arm64. Source: <https://github.com/ijapesigan/docker-dev>.

## Use

Docker (Docker Hub or the GitHub Container Registry):

``` bash
docker run -it ijapesigan/dev
docker run -it ghcr.io/ijapesigan/dev
```

Apptainer:

``` bash
apptainer pull dev.sif docker://ijapesigan/dev
apptainer shell dev.sif
```

## Contents

R packages from CRAN (`scripts/cran.txt`), with their dependencies:

bench, covr, devtools, distro, ggplot2, knitr, lintr, magick, markdown,
microbenchmark, pdftools, pkgdown, printr, ragg, RefManageR, rhub,
remotes, rmarkdown, roxygen2, rprojroot, shiny, styler, testthat,
tidyverse, qpdf, quarto, withr, semmcci, simStateSpace, bootStateSpace,
betaDelta, betaSandwich, betaNB, betaMC, languageserver, httpgd

R packages from GitHub (`scripts/github.txt`), installed after CRAN:

- [nx10/httpgd](https://github.com/nx10/httpgd)
- [rstudio/tinytex](https://github.com/rstudio/tinytex)
- [r-lib/cli](https://github.com/r-lib/cli)
- [r-lib/devtools](https://github.com/r-lib/devtools)
- [r-lib/roxygen2](https://github.com/r-lib/roxygen2)
- [ijapesigan/rProject](https://github.com/ijapesigan/rProject)
- [ijapesigan/longMI](https://github.com/ijapesigan/longMI)
- [jeksterslab/semmcci](https://github.com/jeksterslab/semmcci)
- [jeksterslab/betaDelta](https://github.com/jeksterslab/betaDelta)
- [jeksterslab/betaSandwich](https://github.com/jeksterslab/betaSandwich)
- [jeksterslab/betaLB](https://github.com/jeksterslab/betaLB)
- [jeksterslab/betaNB](https://github.com/jeksterslab/betaNB)
- [jeksterslab/betaMC](https://github.com/jeksterslab/betaMC)
- [jeksterslab/simStateSpace](https://github.com/jeksterslab/simStateSpace)
- [jeksterslab/bootStateSpace](https://github.com/jeksterslab/bootStateSpace)
- [jeksterslab/cTMed](https://github.com/jeksterslab/cTMed)
- [jeksterslab/dynUtils](https://github.com/jeksterslab/dynUtils)
- [jeksterslab/dynTools](https://github.com/jeksterslab/dynTools)
- [jeksterslab/fitVARMxID](https://github.com/jeksterslab/fitVARMxID)
- [jeksterslab/metaDyn](https://github.com/jeksterslab/metaDyn)

## Builds

- Docker Build and Push Dev \[multi\] (Daily)
  (`docker-build-push-daily-multi-dev.yml`): when the base image is
  rebuilt
- Docker Build and Push \[multi\] (`docker-build-push-multi.yml`): after
  Make Project
- Make Project (`make.yml`): on push
- Non-ASCII Check (`non-ascii-check.yml`): after Make Project
- Shell Check (`shellcheck.yml`): after Make Project

The images are pushed to Docker Hub and the GitHub Container Registry as
`ijapesigan/dev:latest`.
