# User configuration
# export MANPATH="/usr/local/man:$MANPATH"
# export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

export MY_HOME="/usr/local/bin"
export HOMEBREW="/opt/homebrew/bin"
export PATH="$MY_HOME:$HOMEBREW:$PATH"

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"
