# Borgia Dotfiles

How I go from fresh to functional on MacOS, with dotfiles and cmd line tools.
Current as of: __Sep, 7 2016__.

## Backup Existing Configs

Most likely you already have some files in your home directory (~). Back them up.

## Fresh macOS

If this is a new install (fresh OS) start by installing xcode

    xcode-select --install

Then brew and brew cask:

    $HOME/repos/mine/cborgia/dotfiles/install/brew.sh
    $HOME/repos/mine/cborgia/dotfiles/install/brew-cask.sh

And some Node stuff

    $HOME/repos/mine/cborgia/dotfiles/install/npm.sh
    
And then some MacOS stuff:

    sh ~/repos/mine/cborgia/dotfiles/macOS/set-defaults.sh

Run the setup.sh script from the 

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

