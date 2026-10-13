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

# lazygit: the latest-release redirect gives the version (no GitHub API call,
# so no rate limit), and the binary matches the build platform
case "$(uname -m)" in
    x86_64)        LAZYGIT_ARCH="x86_64" ;;
    aarch64|arm64) LAZYGIT_ARCH="arm64" ;;
    *)
        echo "lazygit: unsupported architecture $(uname -m)" >&2
        exit 1
        ;;
esac
LAZYGIT_URL=$(curl -fsSLo /dev/null -w '%{url_effective}' "https://github.com/jesseduffield/lazygit/releases/latest")
LAZYGIT_VERSION="${LAZYGIT_URL##*/tag/v}"
if [ -z "$LAZYGIT_VERSION" ] || [ "$LAZYGIT_VERSION" = "$LAZYGIT_URL" ]; then
    echo "lazygit: cannot find the latest version ($LAZYGIT_URL)" >&2
    exit 1
fi
curl -fsSLo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/download/v${LAZYGIT_VERSION}/lazygit_${LAZYGIT_VERSION}_linux_${LAZYGIT_ARCH}.tar.gz"
tar xf lazygit.tar.gz lazygit
install lazygit /usr/local/bin
rm -rf lazygit*
lazygit --version

# fastfetch
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
