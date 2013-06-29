# Solar Panels | A Lightweight Prompt Theme for Oh My ZSH
# created by Lukas Kubanek <lukas.kubanek@me.com>

# colors
COLOR_FG_YELLOW="%F{yellow}"
COLOR_FG_WHITE="%F{white}"
COLOR_FG_BLACK="%F{black}"
COLOR_FG_BLUE="%F{blue}"
COLOR_FG_RESET="%f"
COLOR_BG_BLACK="%K{black}"
COLOR_BG_BLUE="%K{blue}"
COLOR_BG_RESET="%k"

# symbols
TRIANGLE_SYMBOL=$'\u2b80'

# Git prompt properties
ZSH_THEME_GIT_PROMPT_PREFIX="git(${COLOR_FG_WHITE}"
ZSH_THEME_GIT_PROMPT_SUFFIX="${COLOR_FG_BLACK}) "
ZSH_THEME_GIT_PROMPT_DIRTY="*"

# prompt blocks
PWD_BLOCK="${COLOR_BG_BLACK}${COLOR_FG_YELLOW}%/ "
RUBY_BLOCK="${COLOR_BG_BLUE}${COLOR_FG_BLACK}${TRIANGLE_SYMBOL} ruby(${COLOR_FG_WHITE}$(rvm-prompt v g)${COLOR_FG_BLACK}) "
GIT_BLOCK='$(git_prompt_info)'
RESET_BLOCK="${COLOR_BG_RESET}${COLOR_FG_BLUE}${TRIANGLE_SYMBOL}${COLOR_FG_RESET} "

# prompt
PROMPT="${PWD_BLOCK}${RUBY_BLOCK}${GIT_BLOCK}${RESET_BLOCK}"

# unset variables
unset COLOR_FG_YELLOW
unset COLOR_FG_WHITE
unset COLOR_FG_BLACK
unset COLOR_FG_BLUE
unset COLOR_FG_RESET
unset COLOR_BG_BLACK
unset COLOR_BG_BLUE
unset COLOR_BG_RESET
unset TRIANGLE_SYMBOL
unset PWD_BLOCK
unset RUBY_BLOCK
unset GIT_BLOCK
unset RESET_BLOCK
