#!/bin/bash
set -eux

# https://antulik.com/2016-05-27-rails-as-a-static-site-generator.html

rm -rf dist
# wget -r -l inf -k -nc -nH -p -E -e robots=off -P ./dist http://localhost:3000
wget -r -l inf -k -nc -nH -p -E -e robots=off -P ./dist https://hatoq.net
