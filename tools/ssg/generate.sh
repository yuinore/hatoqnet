#!/bin/bash
set -eux

# https://antulik.com/2016-05-27-rails-as-a-static-site-generator.html

RAILS_ENV=production bundle exec rails db:create
RAILS_ENV=production bundle exec rails db:migrate
RAILS_ENV=production bundle exec rails db:seed
RAILS_ENV=production \
  SECRET_KEY_BASE=d2878a6032f1a70f365cfbb9d482adb0052ac0dc99a539884aa9891d750d9a638e2e9b84dd47415bbefc75dbfbaebb6317bfa0d5bd68402a892535043a0c4a3e \
  RAILS_SERVE_STATIC_FILES=true \
  bundle exec rails s &

rm -rf dist/
wget -r -l inf -k -nc -nH -p -E -e robots=off -P ./dist http://localhost:3000
# HEROKU_REPO=heroku-chino
# wget -r -l inf -k -nc -nH -p -E -e robots=off -P ./dist "https://${HEROKU_REPO}.herokuapp.com/"

# ページ上部へのリンクが index.html へのリンクになってしまうので対症療法
sed -i 's/index.html#page-top/#page-top/g' dist/index.html

kill -15 $!

sleep 1s
echo Finished.
