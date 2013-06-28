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

# `cd` replacement for projects (taken from https://coderwall.com/p/feoi0a)
wo() {
  code_dir=~/Projects
  cd $(find $code_dir -type d -maxdepth 3 | grep -i $* | grep -Ev Pods/ --max-count=1)
}

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # load RVM

export PATH=/usr/local/bin:$PATH # add Homebrew binaries to the path
export PATH=$PATH:$HOME/.rvm/bin # add gem binaries to the path
export PATH=$PATH:/usr/texbin # add Latex binaries to the path

source $ZSH/oh-my-zsh.sh # and finally load Oh My ZSH
