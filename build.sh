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

mkdir ../BUILD/firefox-src
cp $FILES ../BUILD/firefox-src

# Change manifest version from 3 to 2
sed -i -e 's/"manifest_version": 3/"manifest_version": 2/' ../BUILD/firefox-src/manifest.json
web-ext build \
    --overwrite-dest \
    --source-dir ../BUILD/firefox-src \
    --artifacts-dir ../BUILD/firefox


