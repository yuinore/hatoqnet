#!/bin/bash
set -eux

# https://antulik.com/2016-05-27-rails-as-a-static-site-generator.html

rm -rf dist
# wget -r -l inf -k -nc -nH -p -E -e robots=off -P ./dist http://localhost:3000
HEROKU_REPO=heroku-chino
wget -r -l inf -k -nc -nH -p -E -e robots=off -P ./dist "https://${HEROKU_REPO}.herokuapp.com/"

# ページ上部へのリンクが index.html へのリンクになってしまうので対症療法
sed -i 's/index.html#page-top/#page-top/g' dist/index.html
