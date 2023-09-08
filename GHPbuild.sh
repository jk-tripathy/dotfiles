#!/bin/sh

git checkout master
git add .
git commit -m"DEPLOY: $1"
flutter build web
mv build ../ 
git checkout deploy
rsync -avuzh ../build/web/* .
rm -rf ../build
git add .
git commit -m"$1"
git push
git checkout master
