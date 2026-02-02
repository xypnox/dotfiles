# vim configuration for the zsh shell
# adapted from https://gist.github.com/LukeSmithxyz/e62f26e55ea8b0ed41a65912fbebbe52

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
# bindkey -M menuselect 'h' vi-backward-char
# bindkey -M menuselect 'k' vi-up-line-or-history
# bindkey -M menuselect 'l' vi-forward-char
# bindkey -M menuselect 'j' vi-down-line-or-history
# bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes.
 function zle-keymap-select {
   if [[ ${KEYMAP} == vicmd ]] ||
      [[ $1 = 'block' ]]; then
     echo -ne '\e[1 q'
   elif [[ ${KEYMAP} == main ]] ||
        [[ ${KEYMAP} == viins ]] ||
        [[ ${KEYMAP} = '' ]] ||
        [[ $1 = 'beam' ]]; then
     echo -ne '\e[5 q'
   fi
 }
 zle -N zle-keymap-select
 
 echo -ne '\e[5 q' # Use beam shape cursor on startup.
 preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.
