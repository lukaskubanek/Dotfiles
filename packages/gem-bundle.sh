#!/usr/bin/env bash

print_step() {
    echo -e "\033[1m$1\033[0m"
}

print_step "> Checking if Bundler is installed..."
command -v bundle >/dev/null 2>&1 || {
    echo >&2 "Bundler is not installed, please install it first.";
    exit 1;
}

print_step "> Changing working directory to ./packages"
cd $(dirname "$0")

print_step "> Bundling gems defined in the Gemfile..."
bundle install
