# Solar Panels | A Lightweight Prompt Theme for Oh My ZSH
# created by Lukas Kubanek <lukas.kubanek@me.com>

# Git properties
ZSH_THEME_GIT_PROMPT_PREFIX=" "
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="*"

# prompt sections
local current_directory='%F{15}%K{0} %/ %k'
local ruby='%K{10} $(rvm-prompt i v g)'
local git='$(git_prompt_info) '
local clear='%k%f '

# prompt
PROMPT="${current_directory}${ruby}${git}${clear}"
