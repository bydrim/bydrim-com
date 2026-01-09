#!/usr/bin/env bash

# in case of error, print error line and exit.
hande_error() {
    echo "Error on line $1. Build has probably failed."
    exit 1
}

trap 'handle_error $LINENO' ERR

# create outputs folder, copy src and rename with timestamp
if [[ ! -d ./outputs ]]; then
    mkdir ./outputs
fi
cp -r ./src ./outputs

timestamp=$(date +%Y%m%d%H%M%S)
mv ./outputs/src "./outputs/$timestamp"

# create relative symbolic link for the latest build so server can always target
# the latest without config change
if [[ -h ./outputs/latest ]]; then
    rm -f ./outputs/latest
fi
ln -sr "./outputs/$timestamp" ./outputs/latest
