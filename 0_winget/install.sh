#!/usr/bin/env bash

DIR=$(dirname $(readlink -f $0))

while read package; do
    info "Installing package: ${package} via Winget..."

    if ! winget search -e --id ${package} --source winget > /dev/null 2>&1; then
        info "Installing package: ${package}..."
        winget install -e --id ${package} --source winget --accept-source-agreements --accept-package-agreements
    else
        success "Package: ${package} is already installed. Skipping."
    fi
done <<< "$(cat ${DIR}/winget-packages.list)"

echo "Done!"
