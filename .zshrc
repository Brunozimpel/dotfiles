# Path to your oh-my-zsh installation.
export ZSH="/home/brunozimpel/.oh-my-zsh"

# Theme settings
ZSH_THEME="spaceship"

# Plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# Source def
source $ZSH/oh-my-zsh.sh

# Color config
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Misc
export PATH=$PATH:~/.local/bin
alias emacs="emacs-27.1"
zstyle ':completion:*:*:make:*' tag-order 'targets'
