# Solar Panels | A Lightweight Prompt Theme for Oh My ZSH
# created by Lukas Kubanek <lukas.kubanek@me.com>

# colors
COLOR_FG_WHITE="%F{15}"
COLOR_FG_BLACK="%F{0}"
COLOR_FG_RESET="%f"
COLOR_BG_BLACK="%K{0}"
COLOR_BG_BLUE="%K{12}"
COLOR_BG_RESET="%k"

# Git prompt properties
ZSH_THEME_GIT_PROMPT_PREFIX="git(${COLOR_FG_WHITE}"
ZSH_THEME_GIT_PROMPT_SUFFIX="${COLOR_FG_BLACK}) "
ZSH_THEME_GIT_PROMPT_DIRTY="*"

# prompt blocks
PWD_BLOCK="${COLOR_BG_BLACK}${COLOR_FG_WHITE} %/ "
RUBY_BLOCK="${COLOR_BG_BLUE}${COLOR_FG_BLACK} ruby(${COLOR_FG_WHITE}$(rvm-prompt v g)${COLOR_FG_BLACK}) "
GIT_BLOCK='$(git_prompt_info)'
RESET_BLOCK="${COLOR_FG_RESET}${COLOR_BG_RESET} "

# prompt
PROMPT="${PWD_BLOCK}${RUBY_BLOCK}${GIT_BLOCK}${RESET_BLOCK}"
