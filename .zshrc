export LC_ALL=zh_TW.UTF-8
export LANG=zh_TW.UTF-8
export EDITOR=vim
export ZSH=~/.oh-my-zsh

alias cls='clear'
alias vim='nvim'
alias rm='sudo rm'
alias ls='ls -HGF'
alias apt-get='sudo apt-fast'
alias npm='sudo npm'
alias docker='sudo docker'
alias docker-compose='sudo docker-compose'
function cd { builtin cd "$@" && ls }


alias cx='chmod +x'
alias myip="curl ipinfo.io"
alias vimrc="nvim ~/.vimrc"
alias zshrc="nvim ~/.zshrc"
function mkcd { mkdir -p "$@" && cd "$@";  }

# Python
export PYTHONUSERBASE=~/.pip
alias py2="/usr/bin/python"
alias py3="python3"
alias pip="pip3"

# Docker
function dkrm { docker kill "$@" && docker rm "$@" }

# Homebrew
alias cask="brew cask"
alias update="brew upgrade && cask upgrade && launch"

# NetHacking
alias nc='ncat'
alias nmap="sudo nmap"

# Pwn
alias gdb='gdb -q'
alias objdump='objdump -M intel'
alias cs='checksec'
alias strace="strace -ixv"
alias ltrace="ltrace -iC"
#alias cyclic_find='~/selfmade_tools/cyclic_find.py'

# enable oh-my-zsh Plugins
source $ZSH/oh-my-zsh.sh

# zsh plugin enable
plugins=(z sudo docker git zsh-syntax-highlighting zsh-completions zsh-autosuggestions)

# zsh themes
source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme
POWERLEVEL9K_MODE='awesome-fontconfig'  # Source Code Pro
DEFAULT_USER="howpwn"
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status)