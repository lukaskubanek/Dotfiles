#!/usr/bin/env bash

BLUE="\033[0;34m"
BOLD="\033[1m"
NOSTYLE="\033[0m"

package_installed() {
    brew cask list -1 | grep -q "^$1\$"
}

install_package_if_not_installed() {
    if package_installed $1; then
        echo -e "${BLUE}${BOLD}==>${NOSTYLE} ${BOLD}Package $1 is already installed${NOSTYLE}"
    else
        # Because the text in cask is printed white the sed pipe causes to remove all formatting 
        # which makes the text readable.
        brew cask install $1 | sed
    fi
}

packages=(

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

)

for package in "${packages[@]}"; do
	install_package_if_not_installed $package
done
