#!/bin/bash

language=$(hyprctl devices -j | jq -r '.keyboards[] | select(.main == true) | .active_keymap')

if [[ "$language" == "English (US)" ]]; then
    echo "🇬🇧"
elif [[ "$language" == "Czech" ]]; then
    echo "🇨🇿"
else
    echo "$language"
fi
