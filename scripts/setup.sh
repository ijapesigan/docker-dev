#!/bin/bash

set -e

bash ubuntu_sys_pkg.sh
bash ubuntu_cran_pkg.sh
bash rproject.sh
bash github_pkg.sh
bash post.sh
