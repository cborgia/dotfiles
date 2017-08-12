 #!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check for Homebrew and install it if missing
if test ! $(which brew)
then
  echo "Installing Homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew tap homebrew/versions
brew tap homebrew/dupes

brew update
brew upgrade --all

apps=(
    ansible
    automysqlbackup
    bash
    bash-completion2
    cmatrix
    composer
    coreutils
    dnsmasq
    ffmpeg
    ffmpeg --with-libvpx
    findutils
    git
    git-extras
    gnu-sed --with-default-names
    grep --with-default-names
    homebrew/php/phplint
    hub
    httpie
    imagemagick --with-webp
    mackup
    mongodb
    moreutils
    mtr
    mysql
    nmap
    nginx
    node
    nvm
    openssh
    openssl
    python
    python3
    reattach-to-user-namespace
    rsync
    screen
    source-highlight
    tmux
    tree
    vim --env-std --override-system-vim --enable-pythoninterp
    wget
    wifi-password
)

brew install "${apps[@]}"

# Remove outdated versions from the cellar
brew cleanup

sudo chown -R `whoami` /usr/local
