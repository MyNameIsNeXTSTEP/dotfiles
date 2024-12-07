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

# NVM & NODE
export NVM_DIR=~/.nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# SHELL
alias f=fish

# GIT
alias gt="git status"
alias ga="git add"
alias gcom="git commit"
alias gpl="git pull"
alias gps="git push"
alias gcl="git clone"
alias gc="git checkout"
alias gcb="git checkout -b"

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
alias dps="docker ps -a"

