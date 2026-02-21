#!/bin/bash

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 0.2; done

MONITOR=eDP-1 polybar main &
MONITOR=HDMI-1-0 polybar secondary &
