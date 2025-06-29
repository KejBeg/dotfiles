#!/bin/bash

language=$(hyprctl devices -j | jq -r '.keyboards[] | select(.main == true) | .active_keymap')

if [[ "$language" == "English (US)" ]]; then
    printf "%s" "🇬🇧"
elif [[ "$language" == "Czech" ]]; then
    printf "%s" "🇨🇿"
else
    printf "%s" "$language"
fi
