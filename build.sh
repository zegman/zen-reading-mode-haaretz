#!/bin/bash

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd "$DIR"

rm -rf BUILD
mkdir BUILD
cd src

FILES="manifest.json script.js"

rm -f ../BUILD/zen-reader.zip
zip ../BUILD/zen-reader.zip $FILES

