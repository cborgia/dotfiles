#!/bin/sh

echo "Setting up your Mac..."

# Check for Homebrew, install if not found
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update

# Install dependencies using our Brewfile
brew tap homebrew/bundle
brew bundle

# Make ZSH the default shell
chsh -s $(which zsh)

