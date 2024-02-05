#!/usr/bin/env bash

function install_package() {
    package="${1}"

    info "Installing package: ${package}..."
    source "${DIR}/${package}/install.sh"
    success "Installing package: ${package}... DONE"
}

DIR=$(dirname $(readlink -f $0))
# export DIR

source "${DIR}/common.sh"

# Install Winget packages
source "${DIR}/0_winget/install.sh"
# Install other packages not available via Winget
install_package fzf
install_package T-Clock

success "Done!"
