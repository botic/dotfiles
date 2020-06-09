#!/usr/bin/env zsh

git pull origin master;

function doIt() {
    rsync --exclude ".git/" \
        --exclude ".gitignore" \
        --exclude ".DS_Store" \
        --exclude ".macos.sh" \
        --exclude "brew-bundle/" \
        --exclude "bootstrap.sh" \
        --exclude "README.md" \
        --exclude "LICENSE" \
        -avh --no-perms . ~;
    source ~/.zprofile;
}

doIt;
unset doIt;
