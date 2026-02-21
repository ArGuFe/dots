#!/bin/bash

COLOR_LOW="#626262"
COLOR_MEDIUM="#978640"
COLOR_HIGH="#f1c40f"
COLOR=""

FONT_CODE=0

sys_brightness=$(brightnessctl get)
brightness=$(($sys_brightness / 192))

if [[ $sys_brightness -le 6400 ]]; then
  COLOR="$COLOR_LOW"
elif [[ $sys_brightness -ge 12800 ]]; then
  COLOR="$COLOR_HIGH"
else
  COLOR="$COLOR_MEDIUM"
fi

echo "%{F$COLOR}%{T$FONT_CODE}󰃠 $brightness%%{T-}%{F-}"
