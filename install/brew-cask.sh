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
    chronosync
    cyberduck
    dash
    dropbox
    elmedia-player
    evernote
    firefox
    firefoxnightly
    flux
    google-adwords-editor
    google-chrome
    google-chrome-canary
    google-drive
    google-web-designer
    gyazo
    hammerspoon
    imagealpha
    imageoptim
    iterm2
    java
    kaleidoscope
    macdown
    malwarebytes-anti-malware
    ngrok
    opera
    phpstorm
    screaming-frog-seo-spider
    screenflow
    sequel-pro
    shuttle
    skype
    slack
    sourcetree
    spectacle
    spotify
    sublime-text
    toggldesktop
    torbrowser
    tower
    transmission
    transmit
    utorrent
    vagrant
    validator-sac
    vlc
    webstorm
)

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package
