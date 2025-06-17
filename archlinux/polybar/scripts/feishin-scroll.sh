#!/bin/bash

# A zscroll wrapper for playerctl

# Get the current player status
PLAYER_STATUS=$(playerctl status 2>/dev/null)

if [ "$PLAYER_STATUS" = "Playing" ]; then
    zscroll -l 40 \
            --delay 0.2 \
            --match-command "playerctl status" \
            --match-text "Playing" "--scroll 1 --before-text ' ' " \
            --match-text "Paused" "--scroll 0 --before-text ' ' " \
            --update-check true "playerctl metadata --format '{{ title }} 󰠃 {{ artist }} 󰀥 {{ album }}'" &
elif [ "$PLAYER_STATUS" = "Paused" ]; then
        playerctl metadata --format '{{ title }} 󰠃 {{ artist }}' | cut -b 1-41
else
    echo "Play Something!"
fi

wait
