#!/bin/bash

set -e

R -e "remotes::install_github(        \
    c(                                \
        'nx10/httpgd',                \
        'rstudio/tinytex',            \
        'r-lib/cli',                  \
        'r-lib/devtools',             \
        'r-lib/roxygen2',             \
        'ijapesigan/rProject',        \
        'ijapesigan/longMI',          \
        'jeksterslab/semmcci',        \
        'jeksterslab/betaDelta',      \
        'jeksterslab/betaSandwich',   \
        'jeksterslab/betaNB',         \
        'jeksterslab/betaMC',         \
        'jeksterslab/simStateSpace',  \
        'jeksterslab/bootStateSpace', \
        'jeksterslab/cTMed',          \
        'jeksterslab/dynUtils',       \
        'jeksterslab/fitDTVARMxID',   \
        'jeksterslab/metaVAR'         \
    )                                 \
)"
