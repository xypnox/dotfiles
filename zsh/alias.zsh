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

alias gp='git push'
alias gpc='git push --set-upstream origin "$(git-branch-current 2> /dev/null)"'
alias gpl='git pull'

# Yarn
#
alias ys='yarn start'
alias yys='yarn && yarn start'
alias rmnm='rm -rf node_modules'
alias rmnmgco='rm -rf node_modules && git reset --hard && gco'
# alias rmyys='rm -rf node_modules yarn.lock && yarn && yarn start'

# Mex
alias rmmex='rm -rf ~/Library/Application\ Support/Mex'

# JS
alias rgcmt='rg "[^/][^/]\\s*console\.log" --sort path | cat'

# Neovim
alias nv='nvim'

# Typora
alias typora='open -a typora'

# Opening config `cfg` files

# neovim
alias config-nvim='nvim ~/.config/nvim'

# alias
alias config-alias='nvim ~/dotfiles/zsh/alias.zsh'

# alacritty
alias config-alacritty='nvim ~/dotfiles/alacritty'
