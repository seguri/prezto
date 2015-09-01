#!/bin/zsh

setopt EXTENDED_GLOB

#
# Link configuration files, exclude README.md and INSTALL.sh
# See `man zshexpn`, FILENAME GENERATION, Glob Qualifiers for help on '(.N)':
#   .  regular files
#   N  set NULL_GLOB (no errors on empty list)
#
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^*.(md|sh)(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
