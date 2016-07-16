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
WHITE="\[\033[00m\]"
BLACK=$(tput setaf 0)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
LIME_YELLOW=$(tput setaf 190)
POWDER_BLUE=$(tput setaf 153)
BLUE=$(tput setaf 4)
MAGENTA=$(tput setaf 5)
CYAN=$(tput setaf 6)

# format of the line
# replace the \w to \W if you need a short path
# you can add \n if you need the line break

export PS1="${POWDER_BLUE}\u@\h: ${WHITE}\w ${LIME_YELLOW}\$(parse_git_branch) ${WHITE}\n$ "

# Aliases
alias gs='git status'
alias gg='git gui'
alias gch='git checkout'
alias gpl='git pull'
alias gpsh='git push'
alias grh='git reset --hard'
alias grs='git reset --soft'

alias gw='gulp watch'
alias gl='gulp'

# for reload this settings run 
# source ~/.bash_profile 
