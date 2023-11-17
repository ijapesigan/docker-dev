#!/bin/bash

set -e

R -e "remotes::install_github(      \
    c(                              \
        'ijapesigan/rProject'       \
    )                               \
)"
