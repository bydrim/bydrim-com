#!/usr/bin/env bash

# in case of error, print error line and exit.
handle_error() {
    echo "Error on line $1. Aborting the building process."
    exit 1
}

trap 'handle_error $LINENO' ERR

echo "## Project building process is starting."

echo "## Checking pnpm .."
pnpmVer="11.5.1"
if command -v pnpm >/dev/null 2>&1 && [ $pnpmVer == $(pnpm --version) ]
then
    echo "## pnpm v$pnpmVer is found, skipping pnpm install .."
else
    echo "## pnpm v$pnpmVer is not found, installing pnpm .."
    npm install -g pnpm@$pnpmVer
fi

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
echo "## Symbolic link has created."

echo ""
echo "## Project building has completed."
