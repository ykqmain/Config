# Copied and modified from the oh-my-zsh theme from clean

if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="white"; fi

local ret_status="%(?:%{$fg[green]%}%B>%b :%{$fg[red]%}%B>%b )"

PROMPT='%{$fg[$NCOLOR]%}%B%n%b%{$reset_color%}:%{$fg[blue]%}%B%c%b%{$reset_color%}$(git_prompt_info) ${ret_status}'

# git theming
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[white]%}(%{$fg_bold[yellow]%}%B"
ZSH_THEME_GIT_PROMPT_SUFFIX="%b%{$fg_bold[white]%})%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%} ✔"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%} ✗"
