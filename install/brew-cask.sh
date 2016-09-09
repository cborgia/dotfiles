#!/bin/bash

# Install Caskroom
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions


# Install packages
apps=(
    1password
    ableton-live
    appcleaner
    adobe-creative-cloud
    airfoil
    alfred
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
    glimmerblocker
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
    kaleidoscope
    macdown
    malwarebytes-anti-malware
    ngrok
    opera
    screenflow
    screaming-frog-seo-spider
    sequel-pro
    skype
    slack
    shuttle
    spectacle
    sublime-text
    spotify
    sourcetree
    tower
    transmit
    toggldesktop
    torbrowser
    tower
    transmission
    validator-sac
    vlc
    utorrent
    webstorm
)

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package
