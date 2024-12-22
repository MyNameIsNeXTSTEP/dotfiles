# SYSTEM
alias ee=exit
alias cl=clear
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

# SHELL
alias f=fish

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
alias gsps="git stash push"
alias gspp="git stash pop"
alias gsa="git stash apply"
alias gcoman="gcom --amend --no-edit"

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
alias bri="brew install"
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
