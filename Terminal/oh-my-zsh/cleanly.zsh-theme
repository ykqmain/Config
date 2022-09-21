# Copied and modified from the oh-my-zsh theme from clean

if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="white"; fi
# 如果UID等于0(root)，则为红色，否则为白色


PROMPT='%{$fg[$NCOLOR]%}%B%n%b%{$reset_color%}:%{$fg[blue]%}%B%~%b%{$reset_color%}$(git_prompt_info) %{$fg[green]%}%B>%b%{$reset_color%} '


# 颜色
# black, red, green, yellow, blue, magenta, cyan, white
# 黑，红，绿，黄，蓝，洋红(紫)，青，白

# --------------------- 
# %n  你的用户名
# %M  计算机的主机名
# %m  计算机的主机名（在第一个句号之前截断）

# %d  你目前的工作目录
# %~  你目前的工作目录相对于～的相对路径
# %l  你当前的tty

# %T  系统时间（时：分）
# %*  系统时间（时：分：秒）
# %D  系统日期（年-月-日）

# %B - %b 开始到结束使用粗体打印
# %U - %u 开始到结束使用下划线打印
# --------------------- 


# git theming
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[white]%}(%{$fg_bold[yellow]%}%B"
ZSH_THEME_GIT_PROMPT_SUFFIX="%b%{$fg_bold[white]%})%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%} ✔"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%} ✗"
