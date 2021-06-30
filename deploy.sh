#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
echo 'tr.dailysh.it' > CNAME

git init
git add -A
git commit -m 'deploy to github pages'

# if you are deploying to https://<USERNAME>.github.io
git push -f git@github.com:tr-vue2/nextlevelshit.github.io.git main

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:nextlevelshit/tr-vue2.git main:gh-pages

cd -
