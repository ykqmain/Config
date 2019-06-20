# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="preference"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(zsh-syntax-highlighting zsh-autosuggestions zsh-completions history-substring-search extract z git python pip systemadmin systemd firewalld osx sublime iterm2 dash web-search)


# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/mysql/bin"

export PATH=/usr/local/bin:/usr/local/sbin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# COLOR

export RED="\033[1;31m"    #红
export GREEN="\033[1;32m"  #绿
export YELOW="\033[1;33m"  #黄
export BLUE="\033[1;34m"   #蓝
export PINK="\033[1;35m"   #粉红
export RES="\033[0m"


# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias clang++="clang++ -std=c++11"
alias p3="python3"
alias pip3update="pip3 freeze --local | grep -v '^-e' | cut -d = -f 1 | xargs -n1 pip3 install -U"

alias dl='wget'
alias td='tldr'
alias img='imgcat'

alias proxy='export ALL_PROXY=socks5://127.0.0.1:1086'
alias ip='curl cip.cc'

alias sha1='shasum -a 1'
alias sha256='shasum -a 256'

function buo(){
    proxy
    ip
    echo ''
    brew update
    echo ''
    brew outdated
}

function buc(){
    brew upgrade
    echo ''
    brew cleanup
}


function lazygit(){
    git add .
    git commit -m "updated: $(date +"%Y-%m-%d %T")"
    git push
}

alias hs='hexo s'
alias hd='hexo d -g'
function hcd(){
    hexo clean
    echo ''
    hexo g
    hexo d
}

bindkey '^z' autosuggest-clear
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

