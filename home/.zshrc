#              __                                     __
#       ____  / /_     ____ ___  __  __   ____  _____/ /_
#      / __ \/ __ \   / __ `__ \/ / / /  /_  / / ___/ __ \
#     / /_/ / / / /  / / / / / / /_/ /    / /_(__  ) / / /
#     \____/_/ /_/  /_/ /_/ /_/\__, /    /___/____/_/ /_/
#                             /____/
#    
#                   Oh My ZSH Configuration
#          https://github.com/robbyrussell/oh-my-zsh

ZSH=$HOME/.oh-my-zsh # path to the configuration
ZSH_THEME="solar-panels" # custom theme
DISABLE_UPDATE_PROMPT="true" # enable automatic updates without prompting
COMPLETION_WAITING_DOTS="true" # enable red dots to be displayed while waiting for completion

# enabled plugins stored in ~/.oh-my-zsh/plugins/
plugins=(git git-flow rvm gem cap brew forklift)

# load other shell dotfiles
for file in ~/.{aliases,functions,path}; do
	[ -r "$file" ] && source "$file"
done
unset file

# load RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# and finally load Oh My ZSH
source $ZSH/oh-my-zsh.sh
