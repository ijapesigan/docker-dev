#!/bin/bash

set -e

R -e "remotes::install_github(      \
    c(                              \
        'ijapesigan/rProject'       \
    )                               \
)"

R -e "library(rProject)"

echo -e "\nInstall rProject, done!"
