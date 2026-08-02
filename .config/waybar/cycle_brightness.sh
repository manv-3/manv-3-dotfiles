#!/bin/bash
# Get current percentage from brightnessctl
PCT=$(brightnessctl | grep -oP '\(\K[0-9]+(?=%\))')

if [ -z "$PCT" ]; then
    # Fallback to math if regex fails
    CURR=$(brightnessctl get)
    MAX=$(brightnessctl max)
    PCT=$((100 * CURR / MAX))
fi

if [ "$PCT" -lt 10 ]; then
    brightnessctl set 10%
elif [ "$PCT" -lt 25 ]; then
    brightnessctl set 25%
elif [ "$PCT" -lt 50 ]; then
    brightnessctl set 50%
elif [ "$PCT" -lt 75 ]; then
    brightnessctl set 75%
elif [ "$PCT" -lt 100 ]; then
    brightnessctl set 100%
else
    brightnessctl set 10%
fi
