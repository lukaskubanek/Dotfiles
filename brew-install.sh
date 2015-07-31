#!/usr/bin/env bash

#=================================#
# Utilities
#=================================#

BLUE="\033[0;34m"
BOLD="\033[1m"
NOSTYLE="\033[0m"

brew_package_installed() {
    brew list -1 | grep -q "^${1##*/}\$"
}

install_brew_package_if_not_installed() {
    if brew_package_installed $1; then
        echo -e "${BLUE}${BOLD}==>${NOSTYLE} ${BOLD}Brew package $1 is already installed${NOSTYLE}"
    else
        brew install $1
    fi
}

cask_package_installed() {
    brew cask list -1 | grep -q "^$1\$"
}

install_cask_package_if_not_installed() {
    if cask_package_installed $1; then
        echo -e "${BLUE}${BOLD}==>${NOSTYLE} ${BOLD}Cask package $1 is already installed${NOSTYLE}"
    else
        # Because the text in cask is printed white the sed pipe causes to remove all formatting 
        # which makes the text readable.
        brew cask install $1 | sed
    fi
}

#=================================#
# Brew Packages
#=================================#

brew_packages=(

    # Homebrew Cask
    caskroom/cask/brew-cask

    # Libraries
    libxml2
    libyaml
    libxslt

    # Ruby Environment
    rbenv
    ruby-build    # rbenv plugin that provides an rbenv install command for compiling different versions of Ruby

    # Development
    cloc          	# tool for counting lines of code
    class-dump    	# command-line utility for examining the Objective-C runtime information
    mogenerator   	# Core Data code generator
    highlight     	# tool for converting source code to various formats by adding syntax highlighting

    # Git
    git
    git-flow
    icdiff        	# diff tool
    tig           	# command-line text-mode interface for Git
    gource        	# software version control visualization tool
    bfg           	# removes large or troublesome blobs like git-filter-branch does, but faster

    # Compilers
    gcc
    ghc

    # Networking
    wget          	# command-line tool for retrieving files using HTTP, HTTPS and FTP
    httpie        	# command-line HTTP client and a user-friendly cURL replacement
    nmap          	# security scanner for network exploration

    # Media
    ffmpeg
    graphviz
    ghostscript   	# interpreter for the PostScript language and for PDF

    # Utilities
    tree          	# recursive directory listing command
    trash         	# small command-line program for OS X that moves files or folders to the trash
    dos2unix      	# DOS to Unix text file format converter
    peco         	# simplistic interactive filtering tool
    youtube-dl    	# small command-line program to download videos from YouTube.com
    s3cmd         	# Amazon S3 command-line client
    gnupg         	# GPG

    # Fun Stuff
    cmatrix       	# little command line program which shows the scrolling lines from 'The Matrix'
    cowsay

)

#=================================#
# Cask Packages
#=================================#

cask_packages=(

    # QuickLook plugins
    provisionql
    qlcolorcode
    qlstephen
    qlmarkdown
    quicklook-json
    qlprettypatch
    quicklook-csv
    qlimagesize
    suspicious-package
	
	# Color Pickers
	colorpicker-developer
	colorpicker-hex
    
    # Others
    wkhtmltopdf

)

#=================================#
# Installation
#=================================#

# Brew packages
for brew_package in "${brew_packages[@]}"; do
	install_brew_package_if_not_installed $brew_package
done

# Cask packages
for cask_package in "${cask_packages[@]}"; do
	install_cask_package_if_not_installed $cask_package
done

# Cleanup
brew linkapps
brew cleanup
brew prune
