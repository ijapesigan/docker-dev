#!/bin/bash

set -e

R -e "remotes::install_github(        \
    c(                                \
        'rstudio/tinytex',            \
        'r-lib/cli',                  \
        'r-lib/devtools',             \
        'ijapesigan/rProject',        \
        'jeksterslab/semmcci',        \
        'jeksterslab/betaDelta',      \
        'jeksterslab/betaSandwich',   \
        'jeksterslab/betaNB',         \
        'jeksterslab/betaMC',         \
        'jeksterslab/simStateSpace',  \
        'jeksterslab/bootStateSpace', \
        'jeksterslab/cTMed',          \
        'jeksterslab/fitDTVARMx',     \
        'jeksterslab/metaVAR'         \
    )                                 \
)"
