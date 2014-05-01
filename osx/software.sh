#!/bin/sh

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)" > /tmp/homebrew-install.log
fi

#
# Install packages from 'brews.txt'
#
cat $DOTFILES/osx/brews.txt | tr '\n' '\000' | xargs -0 brew install

#
# Install other tools
#

# Storm - SSH Manager https://github.com/emre/storm
pip install storm
