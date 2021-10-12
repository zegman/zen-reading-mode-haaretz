#!/bin/bash

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

rm -rf BUILD
mkdir BUILD
cd src

FILES="manifest.json inject.js script.js"

#rm -f ../BUILD/zen-reader.zip
zip ../BUILD/zen-reader.zip $FILES

