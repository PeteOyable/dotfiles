#!/bin/bash

CURRENT_WIFI="$(ipconfig getsummary en0)"
# IP_ADDRESS="$(ipconfig getifaddr en0)"
IP_ADDRESS="$(echo "$CURRENT_WIFI" | grep -o "yiaddr = .*" | sed 's/^yiaddr = //')"
SSID="$(echo "$CURRENT_WIFI" | grep -o "SSID : .*" | sed 's/^SSID : //' | tail -n 1)"

sketchybar\
  --add item wifi right \
  --set wifi \
  icon=$WIFI_CONNECTED \
  icon.color=$YELLOW \
  icon.padding_left=10 \
  background.height=$BACKGROUND_HEIGHT \
  background.border_width="$BORDER_WIDTH" \
  background.border_color="$YELLOW" \
  background.corner_radius="$CORNER_RADIUS" \
  background.color="$SURFACE" \
  label.padding_right=10 \
  label="$SSID"
  --subscribe wifi wifi_change
