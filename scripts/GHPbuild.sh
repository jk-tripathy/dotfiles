#!/bin/sh

ghpbuild () {
    git checkout deploy
    git rebase main
    git push 
    git checkout main
}
