 #!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check for Homebrew and install it if missing
if test ! $(which brew)
then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew tap homebrew/versions
brew tap homebrew/dupes

brew update
brew upgrade --all

apps=(
    automysqlbackup
    bash
    bash-completion2
    coreutils
    cmatrix
    ffmpeg
    ffmpeg --with-libvpx
    findutils
    git
    git-extras
    gnu-sed --with-default-names
    grep --with-default-names
    homebrew/completions/brew-cask-completion
    homebrew/dupes/grep
    homebrew/dupes/openssh
    homebrew/dupes/screen
    homebrew/php/phplint
    hub
    imagemagick --with-webp
    mackup
    mongodb
    moreutils
    mtr
    node
    nvm
    nmap
    python
    rsync
    reattach-to-user-namespace
    source-highlight
    tree
    tmux
    vim --env-std --override-system-vim --enable-pythoninterp
    wget
    wifi-password
)

brew install "${apps[@]}"

# Remove outdated versions from the cellar
brew cleanup

sudo chown -R `whoami` /usr/local
