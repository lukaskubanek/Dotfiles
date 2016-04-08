#!/usr/bin/env bash

print_step() {
    echo -e "\033[1m$1\033[0m"
}

print_step "> Checking if Homebrew is installed..."
command -v brew >/dev/null 2>&1 || {
    echo >&2 "Homebrew is not installed, please install it first.";
    exit 1;
}

print_step "> Changing working directory to ./packages"
cd $(dirname "$0")

print_step "> Installing homebrew-bundle..."
brew tap Homebrew/bundle

print_step "> Bundling packages defined in the Brewfile..."
brew bundle

print_step "> Performing Homebrew cleanup..."
brew linkapps
brew cleanup
brew prune
