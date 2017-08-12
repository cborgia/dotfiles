# cborgia dotfiles

How I go from fresh to functional on MacOS with dotfiles and cmd line tools.

Current as of: __Aug, 12 2017__

### Backup Existing Configs

Most likely you already have some files in your home directory (~). Back them up.

### Fresh macOS

If this is a new fresh OS start by installing xcode then run your brew install scripts, then npm and MacOS:

    xcode-select --install
    $HOME/repos/mine/cborgia/dotfiles/install/brew.sh
    $HOME/repos/mine/cborgia/dotfiles/install/brew-cask.sh
    $HOME/repos/mine/cborgia/dotfiles/install/npm.sh
    sh ~/repos/mine/cborgia/dotfiles/macOS/set-defaults.sh

Dotsfiles:

	sh ~/repos/mine/cborgia/dotfiles/setup.sh

* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) for shell management (tweaks to the bootstrap)


## How it works
I do not edit the dotfiles directly in my home directory. Instead I edit a repo I store in `~/Projects/Dotfiles` and run the bootstrap file when I need to push changes to my home directory.


## Files not included:
* .shuttle.json - I use [shuttle](http://fitztrev.github.io/shuttle/) to quickly SSH into servers, no need to share that info here.


## To DO
* add cmatrix feature on terminal boot
* eidt vi and tmux configs to be super awesome!
* move to a symlink system for easier updating and managment

