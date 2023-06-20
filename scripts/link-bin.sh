#!/usr/bin/env bash
set -e
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo "SCRIPT_DIR:" $SCRIPT_DIR
# Set initial dir to avoid differences between OS and whether package is installed as dependency
# If as dependency: <ROOT>/node_modules/chimpy/scripts/../../node_modules/.bin/
if [ -d "$SCRIPT_DIR/../node_modules/.bin/" ]; then
  cd $SCRIPT_DIR/../node_modules/.bin/
else
  cd $SCRIPT_DIR/../../../node_modules/.bin/
fi
ln -sf ../chimpy/bin/chimp.js chimp
ln -sf ../chimpy/bin/chimpy.js chimpy
cd -

echo "Finished linking bin folder for Chimp"