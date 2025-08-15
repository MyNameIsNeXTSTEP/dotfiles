# SYSTEM
alias tr='tree -C'
alias o='open'
alias hs='history'
alias finh='history | rg' # Find in history
alias lports='sudo lsof -iTCP -sTCP:LISTEN -P -n' # get list of LISTENING ports
alias l=ll
alias ee=exit
alias cl=clear
alias r=ranger
alias ran=ranger
function copy
    if test (count $argv) -eq 1
        cat $argv[1] | pbcopy
    else
        echo "Usage: copy <filename>"
    end
end

alias desk="cd $HOME/Desktop"
alias pjs="cd $HOME/Desktop/Projects"
alias work="cd $HOME/Desktop/Work"

# NVM & NODE
alias pn='pnpm'
export NVM_DIR=~/.nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# YARN
alias yi="yarn install"
alias ya="yarn add"
alias yw="yarn workspace"
alias ywl="yarn workspaces list"
function yf
    if test (count $argv) -eq 1
        fish -c "yarn workspaces focus $argv[1]"
    else
        echo "Usage: Need to provide <yarn workspace name>"
    end
end

# NPM
alias nrd="npm run dev"
alias ni="npm install"

# SHELL
alias f=fish
function ls
    command ls --color=always $argv
end
funcsave ls

# GIT
alias gt="git status"
alias ga="git add"
alias gcom="git commit"
alias gpl="git pull"
alias gps="git push"
alias gpso="git push --set-upstream origin"
alias gcl="git clone"
alias gc="git checkout"
alias gcb="git checkout -b"
alias gb="git branch"
alias gr="git rebase"
alias gf="git fetch"
alias gcp="git cherry-pick"
alias gcm="git checkout main"
alias gs="git stash"
alias gsl="git stash list"
alias gsps="git stash push -u -m"
alias gspp="git stash pop"
alias gsa="git stash apply"
alias gcoman="gcom --amend --no-edit"
alias gtag='git tag -a'
alias glt='git tag'

# Command to add and commit all changes with a provided message
function gcomall
    if test (count $argv) -eq 1
        fish -c "git add . && git commit -m '$argv[1]'"
    else
        echo "Usage: Need to provide a git commit message"
    end
end

# TIG
alias tl="tig log"

# TMUX
alias tm="tmux"
alias tml="tmux ls"
alias tmn="tmux new-session"
alias tma="tmux attach -t"

# VIM
alias n="~/nvim-macos-arm64/bin/nvim"

# BREW
alias br="brew"
alias bri="HOMEBREW_NO_AUTO_UPDATE=1 brew install"
alias brdmp="brew bundle dump --force --file=~/.brewfile"

# DOCKER
alias dc="docker-compose"
alias dil="docker image ls"
alias drmi="docker rmi"
alias drm="docker rm"
alias dps="docker ps -a"
alias dcu="docker-compose up"
alias dcud="docker-compose up -d"
alias dcub="docker-compose up --build"
alias dcubd="docker-compose up -d --build"
alias dcdwnvl="docker-compose down --volumes"
alias drmall="docker rm -v -f $(docker ps -qa)"
alias dcubd-service="docker-compose up -d --no-deps --build"

# PYTHON
alias c-venv="python3 -m venv ."
alias s-venv="source ./bin/activate.fish"
alias pipi="pip3 install"
# Command to create and source the venv
function cs-venvfish
    fish -c "cvenv && svenv"
end

. "$HOME/.local/bin/env"

# AI
alias cld='claude'
alias ca='cursor-agent'

# PostgreSQL
function pg
    if test (count $argv) -eq 1
        fish -c "pgcli postgres://postgres:postgres@localhost:5432/'$argv[1]'"
    else
        echo "Usage: Need to provide a DB name"
    end
end

# Network
alias net="networkQuality -v"

function getnetpassw
    if test (count $argv) -eq 1
        fish -c "security find-generic-password -ga "$argv[1]" | grep "password:""
    else
      echo "Usage: Need to provide a network name"
    end
end

# Content work
alias obs='open ~/Movies/obs'
