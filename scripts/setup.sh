#!/bin/bash

set -e

bash ubuntu_sys_pkg.sh
bash ubuntu_cran_pkg.sh
bash github_pkg.sh
bash tinytex.sh
bash custom.sh
bash post.sh
