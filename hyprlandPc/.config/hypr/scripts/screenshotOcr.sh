#!/bin/bash
# screenshot + OCR script

FILE=$(mktemp --suffix=.png)
grim -g "$(slurp)" "$FILE"
TEXT=$(tesseract "$FILE" -)
echo "$TEXT" | wl-copy
notify-send "OCR Result" "$TEXT"

