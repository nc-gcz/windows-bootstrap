#!/usr/bin/env bash

DIR=$(dirname $(readlink -f $0))

source "${DIR}/common.sh"

# Install Winget packages
source "${DIR}/0_winget/install.sh"

success "Done!"
