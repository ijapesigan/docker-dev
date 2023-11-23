#!/bin/bash

set -e

# try() to avoid errors on arm64
# https://github.com/rstudio/tinytex-releases/issues/37

R -e "try(tinytex::install_tinytex( \
    bundle = 'TinyTeX',         \
    force = TRUE,               \
    dir =  '/opt/TinyTeX'       \
))"
