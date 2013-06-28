# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="aqua"

# Example aliases
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

# Update without prompting
DISABLE_UPDATE_PROMPT=true

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git git-flow rvm gem cap brew forklift osx)

# `cd` replacement for projects (taken from https://coderwall.com/p/feoi0a)
pr() {
  code_dir=~/Projects
  cd $(find $code_dir -type d -maxdepth 3 | grep -i $* | grep -Ev Pods/ --max-count=1)
}

# Homebrew
export PATH=/usr/local/bin:$PATH

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# Latex
export PATH=$PATH:/usr/texbin

# Load Oh My ZSH
source $ZSH/oh-my-zsh.sh

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
