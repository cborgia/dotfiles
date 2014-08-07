#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")"
git pull origin master

# Ask for the administrator password
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

function doIt() {
	rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" \
		--exclude "README.md" --exclude "LICENSE-MIT.txt" -avh --no-perms . ~
	source ~/.bash_profile
}
if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt
	fi
fi
unset doIt

# symlink theme into their required folder
ln -s ~/Content/themes/borgia.zsh-theme ~/.oh-my-zsh/themes


