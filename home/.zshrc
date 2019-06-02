#              __                                     __
#       ____  / /_     ____ ___  __  __   ____  _____/ /_
#      / __ \/ __ \   / __ `__ \/ / / /  /_  / / ___/ __ \
#     / /_/ / / / /  / / / / / / /_/ /    / /_(__  ) / / /
#     \____/_/ /_/  /_/ /_/ /_/\__, /    /___/____/_/ /_/
#                             /____/
#    
#                   Oh My ZSH Configuration
#          https://github.com/robbyrussell/oh-my-zsh

ZSH=$HOME/.oh-my-zsh                    # Path to the Oh My ZSH directory
ZSH_CUSTOM=$HOME/.oh-my-zsh-custom      # Path to custom directory
ZSH_THEME="solar-panels"                # Setting custom theme
DISABLE_UPDATE_PROMPT="true"            # Enable automatic updates without prompting
COMPLETION_WAITING_DOTS="true"          # Enable red dots to be displayed while waiting for completion

# Enable plugins (stored in ~/.oh-my-zsh/plugins/)
plugins=(git git-flow rbenv gem brew forklift swiftpm osx)

# Load other shell dotfiles
dotfiles=(aliases functions path)
for DOTFILE in ${dotfiles[@]}; do
    DOTFILE_PATH="$HOME/.$DOTFILE"
    [ -r "$DOTFILE_PATH" ] && source "$DOTFILE_PATH"
done
unset dotfiles
unset DOTFILE
unset DOTFILE_PATH

# Load rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# ...and finally load Oh My ZSH!
source $ZSH/oh-my-zsh.sh
