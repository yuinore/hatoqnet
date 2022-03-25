#!/bin/bash
set -eux

./tools/ssg/generate.sh

cp CNAME dist/

# できれば Ruby の gem で統一したかったけど一旦 npm で

# Prerequists: $ npm install -g gh-pages
npx gh-pages -d dist
