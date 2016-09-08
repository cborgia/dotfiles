ZSH=$HOME/.oh-my-zsh
ZSH_THEME="borgia"

source $ZSH/oh-my-zsh.sh

# Load some dotfiles
for file in ~/.{aliases,bash_prompt,exports,functions,path}; do
	[ -r "$file" ] && source "$file"
done
unset file

plugins=(git knife brew node npm osx vagrant composer)

# Customize to your needs...
# export PATH=~/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin:~/.composer/vendor/bin:$PATH

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
PHP_AUTOCONF="/usr/local/bin/autoconf"
