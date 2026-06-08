#!/bin/bash

# based on https://raw.githubusercontent.com/rocker-org/rocker-versioned2/master/scripts/install_tidyverse.sh

set -e

# a function to install apt packages only if they are not installed
function apt_install() {
    if ! dpkg -s "$@" >/dev/null 2>&1; then
        if [ "$(find /var/lib/apt/lists/* | wc -l)" = "0" ]; then
            apt-get update
        fi
        apt-get install -y --no-install-recommends "$@"
    fi
}

# package dependencies
apt_install           \
  libmagick++-dev     \
  libpoppler-cpp-dev

# personal apt packages
apt_install        \
    bat            \
    curl           \
    git            \
    git-lfs        \
    less           \
    nnn            \
    openssh-server \
    parallel       \
    rsync          \
    tmux           \
    vim            \
    wget

# lazygit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
install lazygit /usr/local/bin
rm -rf lazygit*

# fastfetch
apt_install        \
    fastfetch

tmpdir="$(mktemp -d)"
trap 'rm -rf "$tmpdir"' EXIT

git clone --depth 1 https://github.com/fastfetch-cli/fastfetch.git "$tmpdir/fastfetch"

cd "$tmpdir/fastfetch"

cmake -S . -B build
cmake --build build --target fastfetch

install -Dm755 build/fastfetch /usr/local/bin/fastfetch

ls -l /usr/local/bin/fastfetch

# clang-format
apt_install        \
  clang-format

# convert pdf to png
apt_install        \
    poppler-utils
