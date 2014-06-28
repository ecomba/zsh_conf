# ZSH Theme - Preview: http://cl.ly/350F0F0k1M2y3A2i3p1S

PROMPT=':'
RPROMPT='$(prompt_grb_scm_info) (%F{red}$(prompt_repo)%F{brwhite}) %F{green}[%2c] %F{brwhite}[%F{yellow}%n@%m%F{brwhite}] %F{green}%T'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY=" %F{red}*%f"
ZSH_THEME_GIT_PROMPT_CLEAN=""
