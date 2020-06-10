#!/usr/bin/env zsh

# Load the shell dotfiles, and then some:
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{zsh_prompt,functions,exports,aliases,extra}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Add local ~/bin
export PATH="$HOME/bin:$PATH";

# Use OpenJDK 8 as default
jdk 1.8