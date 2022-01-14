#!/usr/bin/env sh

set -e

npm run build

cd docs/.vuepress/dist

git init
git config user.name 'liulei'
git config user.email '613639291@qq.com'
git add -A
git commit -m 'deploy'

git push -f git@github.com:liulei9311230/vue-design.git master:gh-pages

cd -
