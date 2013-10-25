ZSH=$HOME/.oh-my-zsh
ZSH_THEME="borgia"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew gem bower forklift)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:~/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

# Source your .alias_ files
for file in ~/.alias_*; do
    source "$file"
done

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
