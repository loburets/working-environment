# ~/.bash_profile

# git auto complete
# download this:
# curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# git current branch function

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

#colors

BLACK=$(tput setaf 0)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
BLUE=$(tput setaf 4)
MAGENTA=$(tput setaf 5)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 7)

LIME_YELLOW=$(tput setaf 190)
POWDER_BLUE=$(tput setaf 153)

# format of the line
# replace the \w to \W if you need a short path
# you can add \n if you need the line break

export PS1="${GREEN}\u@\h: ${WHITE}\w ${BLUE}\$(parse_git_branch) ${WHITE}\n$ "

# Aliases
alias gs='git status'
alias gg='git gui'
alias gm='git merge'
alias gmm='git merge master'
alias gmd='git merge dev'
alias gch='git checkout'
alias gchb='git checkout -b'
alias gchm='git checkout master'
alias gchd='git checkout dev'
alias gchs='git checkout staging'
alias gpl='git pull'
alias gpsh='git push'
alias grh='git reset --hard'
alias grs='git reset --soft'
alias gcl='git clone'

alias gw='gulp watch'
alias gl='gulp'

alias wp='webpack'
alias ww='webpack --watch'

alias pa='php artisan'
alias pu='phpunit'
alias pf='phpunit --filter'

alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ......='cd ../../../../../'

alias cda='composer dumpautoload'

# for reload this settings run
# source ~/.bash_profile
export PATH="/usr/local/sbin:$PATH"


export PATH="$HOME/.npm-packages/bin:$PATH"
