#!/bin/bash
set -eux

./tools/ssg/generate.sh
git stash --include-untracked
git checkout gh-pages
rm -rf *
git stash pop
mv dist/* .
rmdir dist
git add .
git commit -m 'Generate Static Site'
git push
git checkout master
