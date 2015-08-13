 #!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

brew update
brew upgrade --all

# Install the linux version of sed
brew install gnu-sed

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew tap homebrew/versions
brew install bash-completion2

brew install wget --with-iri


# Install more recent versions of some OS X tools.
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen


# Install other useful binaries
brew install ack
brew install git
brew install hub
brew install node
brew install rsync
brew install tree
brew install webkit2png
brew install tmux
brew install cmatrix
brew install mackup
brew install nmap

# Python
brew install python

# Vim
brew install vim --env-std --override-system-vim --enable-pythoninterp;

# Cask
brew install caskroom/cask/brew-cask

brew cask install 1password
brew cask install ableton-live
brew cask install adobe-creative-cloud
brew cask install airfoil
brew cask install alfred
brew cask install appcleaner
brew cask install chronosync
brew cask install cyberduck
brew cask install dropbox
brew cask install ember
brew cask install espresso
brew cask install firefox
brew cask install imageoptim
brew cask install iterm2
brew cask install java
brew cask install launchrocket
brew cask install levelator
brew cask install little-snitch
brew cask install macdown
brew cask install plex-media-server
brew cask install google-adwords-editor
brew cask install google-chrome
brew cask install google-web-designer
brew cask install kaleidoscope
brew cask install screaming-frog-seo-spider
brew cask install sequel-pro
brew cask install shuttle
brew cask install sourcetree
brew cask install sublime-text
brew cask install toggldesktop
brew cask install torbrowser
brew cask install tower
brew cask install transmission
brew cask install vlc
brew cask install validator-sac

sudo chown -R `whoami` /usr/local

# Remove outdated versions from the cellar
brew cleanup
