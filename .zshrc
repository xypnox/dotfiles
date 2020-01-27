#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
http_proxy="http://172:16:2:30:8080"
HTTP_PROXY="http://172:16:2:30:8080"
https_proxy="http://172:16:2:30:8080"
HTTPS_PROXY="http://172:16:2:30:8080"
ftp_proxy="http://172:16:2:30:8080"
FTP_PROXY="http://172:16:2:30:8080"



export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools


# precmd() { print "" }



randpw(){ < /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c${1:-20};echo;}



eval "$(direnv hook zsh)"


show_virtual_env() {
  if [[ -n "$VIRTUAL_ENV" && -n "$DIRENV_DIR" ]]; then
    echo "($(basename $VIRTUAL_ENV))"
  fi
}
PS1='$(show_virtual_env) '$PS1

alias clipster='~/Apps/clipster/clipster'