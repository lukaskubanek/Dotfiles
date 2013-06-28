# MY CUSTOM AQUA ZSH THEME
# works together with oh-my-zsh
# created by Lukas Kubanek <lukas@kubanek.org>

# prompt preview
# path [ruby] [git-branch] > |

# git properties
ZSH_THEME_GIT_PROMPT_PREFIX=" [%{$reset_color%}%{$fg[black]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}]"
ZSH_THEME_GIT_PROMPT_DIRTY="*"

# prompt sections
local pwd="${FG[014]}%/${FX[reset]}"
local rvm=' [%{$FX[reset]%}$(rvm-prompt i v g)%{$FX[reset]%}]'
local git='$(git_prompt_info)'
local prompt_symbol=" ${FX[bold]}${FG[014]}>${FX[reset]} "

# prompt
PROMPT="${pwd}${rvm}${git}${prompt_symbol}"