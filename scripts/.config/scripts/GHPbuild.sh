#!/bin/sh

GHPbuild () {
    # check for uncommited changes
    git checkout master
    git add .
    git commit -m"DEPLOY: $1"
    #build
    flutter build web
    cp CNAME build/web/
    #cd to deploy dir
    cd ~/projects/deploy/jk-tripathy.github.io/
    #checkout deploy
    git checkout deploy
    #rm all files
    rm -rf *
    #cp over all files
    cp -r ~/projects/jk-tripathy.github.io/build/web/* .
    #push
    git add .
    git commit -m"$1"
    git push
    #cd back to work dir
    cd ~/projects/jk-tripathy.github.io/
}
