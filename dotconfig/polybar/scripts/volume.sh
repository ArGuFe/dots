#!/bin/bash

COLOR_LOW="#e74c3c"
COLOR_MEDIUM="#f1c40f"
COLOR_HIGH="#2ecc71"
COLOR_DISABLED="#707880"
COLOR=""

ICON_LOW="󰕿"
ICON_MEDIUM="󰖀"
ICON_HIGH="󰕾"
ICON_MUTE="󰖁"
ICON=""

FONT_CODE=0

volume=$(pamixer --get-volume)
muted=$(pamixer --get-mute)

if [[ $muted = "true" ]] || [[ $volume = 0 ]]; then
  COLOR="$COLOR_DISABLED"
  ICON="$ICON_MUTE"
else
  if [[ $volume -le 33 ]]; then
    COLOR="$COLOR_LOW"
    ICON="$ICON_LOW"
  elif [[ $volume -ge 66 ]]; then
    COLOR="$COLOR_HIGH"
    ICON="$ICON_HIGH"
  else
    COLOR="$COLOR_MEDIUM"
    ICON=$ICON_MEDIUM
  fi
fi

echo "%{F$COLOR}%{T$FONT_CODE}$ICON $volume%%{T-}%{F-}"
