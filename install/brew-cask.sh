#!/bin/bash

# Install Caskroom
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions


# Install packages
apps=(
    1password
    ableton-live
    adobe-creative-cloud
    airfoil
    alfred
    appcleaner
    atom
    atom-beta
    chronosync
    cyberduck
    dash
    dropbox
    elmedia-player
    firefox
    firefoxnightly
    flux
    google-adwords-editor
    google-chrome
    google-chrome-canary
    google-drive
    google-web-designer
    gyazo
    hyper
    imagealpha
    imageoptim
    iterm2
    java
    kaleidoscope
    macdown
    ngrok
    opera
    screaming-frog-seo-spider
    screenflow
    sequel-pro
    shuttle
    slack
    sourcetree
    spectacle
    sublime-text
    toggldesktop
    torbrowser
    tower
    transmission
    transmit
    vagrant
    validator-sac
    vlc
)

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package
