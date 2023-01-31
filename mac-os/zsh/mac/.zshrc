#
# ZSH/prezto Configuration
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#   xypnox <xypnox@gmail.com>

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customization

# zoxide - a replacement for cd
eval "$(zoxide init zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Load aliases
. "${HOME}/dotfiles/zsh/alias.zsh"

# Load exports
. "${HOME}/dotfiles/zsh/export.zsh"

# Load vim keybinding
. "${HOME}/dotfiles/zsh/vim.zsh"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/usr/local/opt/postgresql@13/bin:$PATH"
export PATH="/usr/local/opt/libpq/bin:$PATH"


export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
