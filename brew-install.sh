#!/usr/bin/env bash

BLUE="\033[0;34m"
BOLD="\033[1m"
NOSTYLE="\033[0m"

package_installed() {
    brew list -1 | grep -q "^$1\$"
}

install_package_if_not_installed() {
    if package_installed $1; then
        echo -e "${BLUE}${BOLD}==>${NOSTYLE} ${BOLD}Package $1 is already installed${NOSTYLE}"
    else
        brew install $1
    fi
}

packages=(

    # Homebrew Cask
    brew-cask

    # Libraries
    libxml2
    libyaml
    libxslt

    # Ruby Environment
    rbenv
    ruby-build    # rbenv plugin that provides an rbenv install command for compiling different versions of Ruby

    # Development
    cloc          # tool for counting lines of code
    class-dump    # command-line utility for examining the Objective-C runtime information
    appledoc
    mogenerator   # Core Data code generator
    tidy          # HTML Tidy
    highlight     # tool for converting source code to various formats by adding syntax highlighting

    # Git
    git
    git-flow
    tig           # command-line text-mode interface for Git
    gource        # software version control visualization tool
    bfg           # removes large or troublesome blobs like git-filter-branch does, but faster

    # Compilers
    gcc
    apple-gcc42
    ghc

    # Networking
    wget          # command-line tool for retrieving files using HTTP, HTTPS and FTP
    httpie        # command-line HTTP client and a user-friendly cURL replacement
    nmap          # security scanner for network exploration

    # Media
    ffmpeg
    graphviz
    ghostscript   # interpreter for the PostScript language and for PDF

    # Utilities
    tree          # recursive directory listing command
    trash         # small command-line program for OS X that moves files or folders to the trash
    dos2unix      # DOS to Unix text file format converter
    peco          # simplistic interactive filtering tool
    youtube-dl    # small command-line program to download videos from YouTube.com
    s3cmd         # Amazon S3 command-line client
    gnupg         # GPG

    # Fun Stuff
    cmatrix       # little command line program which shows the scrolling lines from 'The Matrix'

)

for package in "${packages[@]}"; do
	install_package_if_not_installed $package
done
