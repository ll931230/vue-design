#!/usr/bin/env sh

set -e

npm run build

cd /

git init
git config user.name 'liulei'
git config user.email 'lei.liul@ymm56.com'
git add -A
git commit -m 'deploy'

git push -f git@github.com:liulei9311230/vue_design.git master:main

cd -