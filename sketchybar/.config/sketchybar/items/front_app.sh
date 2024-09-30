#!/bin/bash

sketchybar \
  --add item front_app left \
  --set front_app \
  icon.font="sketchybar-app-font:Regular:16.0" \
  icon.color=$LAVENDER \
  icon.padding_left=15 \
  background.height=$BACKGROUND_HEIGHT \
  background.border_width="$BORDER_WIDTH" \
  background.border_color="$LAVENDER" \
  background.corner_radius="$CORNER_RADIUS" \
  background.color="$SURFACE" \
  label.padding_left=10 \
  label.padding_right=15 \
  script="$PLUGIN_DIR/front_app.sh" \
  --subscribe front_app front_app_switched
