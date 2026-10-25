#!/bin/bash

set -e

# GitHub packages wanted (never their dependencies)
pkgs=(
    nx10/httpgd
    rstudio/tinytex
    r-lib/cli
    r-lib/devtools
    r-lib/roxygen2
    ijapesigan/rProject
    ijapesigan/longMI
    jeksterslab/semmcci
    jeksterslab/betaDelta
    jeksterslab/betaSandwich
    jeksterslab/betaNB
    jeksterslab/betaMC
    jeksterslab/simStateSpace
    jeksterslab/bootStateSpace
    jeksterslab/cTMed
    jeksterslab/dynUtils
    jeksterslab/dynTools
    jeksterslab/fitVARMxID
    jeksterslab/metaDyn
)

function apt_install() {
    if ! dpkg -s "$@" >/dev/null 2>&1; then
        if [ "$(find /var/lib/apt/lists/* | wc -l)" = "0" ]; then
            apt-get update
        fi
        apt-get install -y --no-install-recommends "$@"
    fi
}

# system dependencies of the packages and of their R dependencies: pak
# looks them up (the r-hub system requirements database), apt installs
# them; skipped without apt
install2.r --error --skipinstalled pak
if command -v apt-get > /dev/null 2>&1; then
    sys="$(Rscript -e "writeLines(as.character(unique(unlist(pak::pkg_sysreqs(commandArgs(TRUE))\$packages\$system_packages))))" "${pkgs[@]}")"
    if [ -n "${sys}" ]; then
        mapfile -t sys_pkgs <<< "${sys}"
        apt_install "${sys_pkgs[@]}"
    fi
fi

# their R dependencies (CRAN, from each DESCRIPTION) with install2.r,
# then the packages
deps="$(Rscript -e "d <- pak::pkg_deps(commandArgs(TRUE)); writeLines(d\$package[d\$type == 'standard'])" "${pkgs[@]}")"
if [ -n "${deps}" ]; then
    mapfile -t deps_pkgs <<< "${deps}"
    install2.r --error --skipinstalled -n -1 "${deps_pkgs[@]}"
fi
Rscript -e "remotes::install_github(commandArgs(TRUE), dependencies = FALSE, upgrade = 'never')" "${pkgs[@]}"

echo -e "\nInstall GitHub packages, done!"
