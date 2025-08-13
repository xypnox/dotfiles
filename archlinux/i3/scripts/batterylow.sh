#!/bin/bash

# Ensure the 'acpi' command is available
if ! command -v acpi &> /dev/null
then
    echo "acpi command could not be found. Please install it."
    # Send a notification about the missing command as well
    notify-send "Battery Script Error" "The 'acpi' command is not installed."
    exit
fi

# Define the battery percentage threshold
CRITICAL_LEVEL=15

# Loop to continuously check the battery status
while true; do
    # Get the battery percentage using acpi
    BATTERY_LEVEL=$(acpi -b | grep -P -o '[0-9]+(?=%)')

    # Check if the battery is discharging and the level is below the threshold
    # The 'grep "Discharging"' part prevents notifications when the laptop is plugged in
    if acpi -b | grep -q "Discharging" && [ "$BATTERY_LEVEL" -le "$CRITICAL_LEVEL" ]; then
        # Send a notification using Pango markup for a larger font size
        notify-send -u critical "Low Battery" "<span font='32'>Battery level is at ${BATTERY_LEVEL}%!</span>"
    fi

    # Wait for 30 seconds before checking again
    sleep 30
done
