#!/bin/bash

set -e

install2.r --error --skipinstalled -n -1 \
    usethis

R -e "install.packages('usethis')"
R -e "usethis::create_github_token()"
R -e "usethis::edit_r_environ()"
