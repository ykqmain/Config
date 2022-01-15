# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/yang/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="preference"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-syntax-highlighting zsh-completions zsh-autosuggestions history history-substring-search extract encode64 z macos git python pip sublime brew web-search httpie tldr)


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"
# export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export MY_HOME="/usr/local"
export MYSQL="$MY_HOME/mysql/bin"
export HOMEBREW="/opt/homebrew/bin"

export PATH="$MY_HOME/bin:$MYSQL:$HOMEBREW:$PATH"
source $ZSH/oh-my-zsh.sh


# COLOR
export HEI="\e[1;30m"
export HONG="\e[1;31m"
export LV="\e[1;32m"
export HUANG="\e[1;33m"
export LAN="\e[1;34m"
export FEN="\e[1;35m"
export QING="\e[1;36m"
export BAI="\e[1;37m"
export RES="\e[0m"


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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


alias td='tldr'
alias sha1='shasum -a 1'
alias sha256='shasum -a 256'
alias py="python3"
# alias clang++="clang++ -std=c++11"


alias cip='curl cip.cc'
function ip(){
    echo -e "${LV}ipip.net${RES}"
    curl myip.ipip.net

    echo -e "\n${LV}tool.lu${RES}"
    curl -L ip.tool.lu

    echo -e "\n${LV}cip.cc${RES}"
    curl cip.cc
}

function proxy(){
    # export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890
    export http_proxy=http://127.0.0.1:1087;export https_proxy=http://127.0.0.1:1087;export ALL_PROXY=socks5://127.0.0.1:1080
    curl -I www.google.com
}

function b1(){
    echo -e "${LV}更新Homebrew：${RES}"
    brew update
    echo -e "${HUANG}检查旧包：${RES}"
    brew outdated
}
function b2(){
    echo -e "${HONG}升级包：${RES}"
    brew upgrade
    echo -e "${LAN}清理包：${RES}"
    brew cleanup
}

function lazygit(){
    git add .
    git commit -m "updated: $(date +"%Y-%m-%d %T")"
    git push
}

function ff(){
    ffmpeg -i $1 -hide_banner
}


# function hgs(){
#     cd /Users/yang/Blog
#     pwd
#     hexo server
# }
# function hcd(){
#     cd /Users/yang/Blog
#     pwd
#     echo ''
#     hexo clean
#     echo ''
#     hexo g -d
# }

e(){
    g=""
    line=$(ls -l $1 | grep -v "com.apple" | wc -l)
    c=$(echo "$line - 1" | bc)
    echo -e "${FEN}$c${RES} 个自启项"
    ls $1 | grep -v "com.apple"
    echo ''
}
launch(){

    p1="/Users/yang/Library/LaunchAgents"
    echo -e "${LV}${p1}：用户自定义的启动项${RES}"
    e $p1

    p2="/Library/LaunchDaemons"
    echo -e "${LAN}${p2}：系统启动时运行，用户不登录也会运行${RES}"
    e $p2

    p3="/Library/LaunchAgents"
    echo -e "${LAN}${p3}：系统启动后，用户登录后运行${RES}"
    e $p3

    p4="/System/Library/LaunchDaemons"
    echo -e "${HUANG}${p4}：系统组件，系统装载时以root用户启动${RES}"
    e $p4

    p5="/System/Library/LaunchAgents"
    echo -e "${HUANG}${p5}：系统组件，任一用户登录后以当前用户启动${RES}"
    e $p5

    case $1 in
        "o")
            echo "打开文件夹..."
            open $p1 $p2 $p3
            ;;
        "a")
            open $p1 $p2 $p3 $p4 $p5
            ;;
    esac
}


bindkey '^z' autosuggest-clear
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
