#!/usr/bin/env bash
set -e
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo "SCRIPT_DIR:" $SCRIPT_DIR
# Set initial dir to avoid differences between OS
cd $SCRIPT_DIR/../node_modules/.bin/
ln -sf ../chimpy/bin/chimp.js chimp
ln -sf ../chimpy/bin/chimpy.js chimpy
cd -

echo "Finished linking bin folder for Chimp"