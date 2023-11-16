#!/bin/bash

git clone git@github.com:ijapesigan/docker-dev.git
rm -rf "$PWD.git"
mv docker-dev/.git "$PWD"
rm -rf docker-dev
