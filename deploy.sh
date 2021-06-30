#!/usr/bin/env sh

set -e

npm run build

cd dist

echo 'tr.dailysh.it' > CNAME

git init
git add -A
git commit -m 'deploy to github pages'

git push -f git@github.com:nextlevelshit/tr-vue2.git main:gh-pages

cd -
