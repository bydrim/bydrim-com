#!/usr/bin/env bash

# in case of error, print error line and exit.
handle_error() {
    echo "Error on line $1. Aborting the building process."
    exit 1
}

trap 'handle_error $LINENO' ERR

echo "## Project building process is starting."

echo "## Installing pnpm 10.28.1 .."
npm install -g pnpm@10.28.1

echo "## Installing project dependencies with pnpm .."
pnpm i --frozen-lockfile

echo "## Generating static files .."
pnpm generate

# create outputs folder, copy generated project and rename with timestamp
echo "## Copying generated files .."
if [[ ! -d ./outputs ]]; then
    mkdir ./outputs
fi
# '.output/' is the folder of nuxt. 'outputs' is the folder, with an arbitrary name, to collect build versions.
cp -r ./.output/public ./outputs

# year month day hour minute second
timestamp=$(date +%Y%m%d%H%M%S)
mv ./outputs/public "./outputs/$timestamp"
echo "## Static content copied to './outputs/$timestamp'."

# create relative symbolic link for the latest build so server can always target
# the latest without config change
if [[ -h ./outputs/latest ]]; then
    rm -f ./outputs/latest
fi
ln -sr "./outputs/$timestamp" ./outputs/latest
echo "## Symbolic link created."

echo "\n## Project building completed."
