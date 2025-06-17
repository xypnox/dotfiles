#!/bin/bash

# A robust Polybar module for playerctl.
#
# This script automatically detects the active player and uses the correct
# metadata fields based on the user's provided output.

# Function to get and format the current status
get_status() {
    # Check if a player is running and controllable
    if ! playerctl status &>/dev/null; then
        echo "" # Output nothing if no player is active
        return
    fi

    STATUS=$(playerctl status)
    # Correctly using xesam:album for the title as per your metadata output
    ARTIST=$(playerctl metadata xesam:artist)
    TITLE=$(playerctl metadata xesam:title)
    ALBUM=$(playerctl metadata xesam:album)

    # Combine artist and title, but show title if artist is missing
    if [ -n "$ARTIST" ]; then
        if [ -n "$ALBUM" ]; then
            TEXT="$ARTIST - $TITLE ($ALBUM)"
        else
        TEXT="$ARTIST - $TITLE"
        fi
    else
        if [ -n "$ALBUM" ]; then
            TEXT="$TITLE ($ALBUM)"
        else
        TEXT="$TITLE"
        fi
    fi

    # Set icons based on player status
    if [ "$STATUS" = "Playing" ]; then
        ICON="⏸" # Play icon
        echo "$ICON $TEXT"
    elif [ "$STATUS" = "Paused" ]; then
        ICON="▶" # Pause icon
        echo "$ICON $TEXT"
    else
        ICON="⏹" # Stop icon
        echo "$ICON Stopped"
    fi
}

# Main script logic to handle arguments or start monitoring
case "$1" in
    --play-pause)
        playerctl play-pause
        ;;
    --next)
        playerctl next
        ;;
    --prev)
        playerctl previous
        ;;
    *)
        # Default action: start the monitoring loop for Polybar
        # This will print the status once, then wait for events.
        get_status
        ;;
esac
