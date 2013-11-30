ZSH=$HOME/.oh-my-zsh
ZSH_THEME="borgia"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(bower brew gem git grunt forklift composer rvm)

source $ZSH/oh-my-zsh.sh

# Load some helpufl dotfiles...
for file in ~/.{private,bash_prompt,exports,alias*,functions,path}; do
	[ -r "$file" ] && source "$file"
done
unset file