#!/bin/bash
set -eux

./tools/ssg/generate.sh
git stash --include-untracked
git checkout gh-pages

if [ -e CNAME ]; then
  git rm -rf .
  git stash --include-untracked
  rm -rf *

  git checkout HEAD -- CNAME
else
  git rm -rf .
  git stash --include-untracked
  rm -rf *
fi

git stash pop stash@{1}

mv dist/* .
rmdir dist
git add .
git commit -m 'Generate Static Site'
git pull
git push

git checkout HEAD^
git stash pop stash@{0}
git reset --hard HEAD

git checkout master
