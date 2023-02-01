#
# Aliases - by xypnox
#

RED='\033[0;33m'
NC='\033[0m' # No Color

# Terminal
#
alias cls='echo -en "${RED}~~~\n\n\n\n\n\n~~~ CLEAR ~~~\n\n\n\n\n\n~~~${NC}" && clear'
alias dt='lsd --tree --depth 1'

# Git
#
alias gst='git status'

alias gaa='git add --all'
alias gc='git commit'
alias gac='git add --all && git commit'

alias gco='git checkout'
alias gcb='git checkout -b'
alias gcr='git checkout -' # Checkout recent branch
alias gct='git checkout --track'

# List 10 most recent branches
# alias gbr='git branch --sort=-committerdate | head'
# This new one shows it withot the * marker (easier to pipe for fzf -> git)
alias gbr='git branch --sort=-committerdate --format="%(refname:short)" | head'
#
# Git branch switch
# Shows the list of branches sorted by the latest commit date in fzf, to choose which one to switch to
alias gbs='git branch --sort=-committerdate --format="%(refname:short)" | fzf | xargs git checkout'

alias gp='git push'
# Push and create branch if not in upstream
alias gpc='git push --set-upstream origin "$(git-branch-current 2> /dev/null)"'
alias gpl='git pull'

# rebase
alias grc='git rebase --continue'
alias gra='git rebase --abort'

# Yarn
#
# alias ys='yarn start'
# alias yys='yarn && yarn start'
# alias rmnm='rm -rf node_modules'
# alias rmnmgco='rm -rf node_modules && git reset --hard && gco'
# alias rmyys='rm -rf node_modules yarn.lock && yarn && yarn start'

# JS
alias rgcmt='rg "[^/][^/]\\s*console\.log" --sort path | cat'

# LunarVim
alias lv='lvim'

# Typora
# alias typora='open -a typora'

alias nvn='z ~/notes && lvim'

# Opening config `cfg` files

# neovim
alias config-dotfiles='lvim ~/dotfiles'
