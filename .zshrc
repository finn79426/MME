export LC_ALL=zh_TW.UTF-8
export LANG=zh_TW.UTF-8
export EDITOR=vim
export ZSH=~/.oh-my-zsh

alias cls='clear'
alias vim='nvim'
alias rm='trash'
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
alias pip2="pip2"
alias py3="python3"
alias pip3="pip3"

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

# The Fuck
eval $(thefuck --alias)

# zsh plugin enable
plugins=(z sudo docker git zsh-syntax-highlighting zsh-completions zsh-autosuggestions)

# zsh themes
POWERLEVEL9K_MODE='awesome-fontconfig'  # Source Code Pro
DEFAULT_USER="howpwn"
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status)

##### Must be placed at the end of .zshrc #####
# enable oh-my-zsh Plugins
source $ZSH/oh-my-zsh.sh
# enable powerlevel9k theme
source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme
