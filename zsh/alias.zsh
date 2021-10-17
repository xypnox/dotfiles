#
# Aliases - by xypnox
#

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

# Neovim
alias nv='nvim'


# Opening config `cfg` files

# neovim
alias config-nvim='nvim ~/.config/nvim/init.vim'
# alias
alias config-alias='nvim ~/dotfiles/zsh/alias.zsh'


