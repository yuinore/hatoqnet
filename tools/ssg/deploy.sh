#!/bin/bash
set -eux

./tools/ssg/generate.sh
git stash --include-untracked
git checkout gh-pages

if [ -e CNAME ]; then
  rm -rf *
  git checkout HEAD -- CNAME
else
  rm -rf *
fi

git stash pop
mv dist/* .
rmdir dist
git add .
git commit -m 'Generate Static Site'
git pull
git push
git checkout master
