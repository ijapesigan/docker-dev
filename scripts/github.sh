#!/bin/bash

set -e

R -e "install.packages('usethis')"
R -e "usethis::create_github_token()"
R -e "usethis::edit_r_environ()"
