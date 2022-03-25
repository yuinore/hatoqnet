#!/bin/bash
set -eux

./tools/ssg/generate.sh

cp CNAME dist/

# Prerequists: $ npm install -g gh-pages
npx gh-pages -d dist
