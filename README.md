
<!-- README.md is generated from .setup/readme/README.Rmd, which rProject's
docker template writes. Edit .setup/readme/description.md, scripts/cran.txt,
scripts/github.txt, or .setup/scripts/project.R instead. -->

# ijapesigan/dev

<!-- badges: start -->

[![Docker Build and Push Dev \[multi\]
(Daily)](https://github.com/ijapesigan/docker-dev/actions/workflows/docker-build-push-daily-multi-dev.yml/badge.svg)](https://github.com/ijapesigan/docker-dev/actions/workflows/docker-build-push-daily-multi-dev.yml)
[![Docker Build and Push
\[multi\]](https://github.com/ijapesigan/docker-dev/actions/workflows/docker-build-push-multi.yml/badge.svg)](https://github.com/ijapesigan/docker-dev/actions/workflows/docker-build-push-multi.yml)
[![Make
Project](https://github.com/ijapesigan/docker-dev/actions/workflows/make.yml/badge.svg)](https://github.com/ijapesigan/docker-dev/actions/workflows/make.yml)
[![Non-ASCII
Check](https://github.com/ijapesigan/docker-dev/actions/workflows/non-ascii-check.yml/badge.svg)](https://github.com/ijapesigan/docker-dev/actions/workflows/non-ascii-check.yml)
[![Shell
Check](https://github.com/ijapesigan/docker-dev/actions/workflows/shellcheck.yml/badge.svg)](https://github.com/ijapesigan/docker-dev/actions/workflows/shellcheck.yml)
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

covr, devtools, distro, ggplot2, knitr, lintr, magick, markdown,
microbenchmark, pdftools, pkgdown, printr, ragg, RefManageR, rhub,
remotes, rmarkdown, roxygen2, rprojroot, shiny, styler, testthat,
tidyverse, qpdf, quarto, withr, semmcci, simStateSpace, bootStateSpace,
betaDelta, betaSandwich, betaNB, betaMC, languageserver, httpgd

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
