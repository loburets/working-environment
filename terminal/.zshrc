# ~/.bash_profile

# for reload this settings run
# source ~/.zshrc

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

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '(%b)'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
autoload -U colors && colors
PROMPT='${GREEN}%n: ${WHITE}${PWD/#$HOME/~} ${BLUE}${vcs_info_msg_0_} %{$reset_color%}%

'

# Aliases
alias gs='git status'
alias gg='git gui'
alias gm='git merge'
alias gmm='git merge master'
alias gmd='git merge dev'
alias gms='git merge staging'
alias gch='git checkout'
alias gchm='git checkout master'
alias gchd='git checkout dev'
alias gchs='git checkout staging'
alias gchb='git checkout -b'
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
alias pu='vendor/bin/phpunit'
alias pf='vendor/bin/phpunit --filter'
alias pts='vendor/bin/phpunit --testsuite='

alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ......='cd ../../../../../'

alias cda='composer dumpautoload'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
