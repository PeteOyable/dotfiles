#!/bin/bash

sketchybar \
  --add item spotify left \
  --set spotify \
  icon=$MEDIA \
  icon.color=$GREEN \
  icon.padding_left=10 \
  background.height=$BACKGROUND_HEIGHT \
  background.corner_radius="$CORNER_RADIUS" \
  background.border_width="$BORDER_WIDTH" \
  background.border_color=$GREEN \
  background.color="$SURFACE" \
  label.padding_right=10 \
  background.drawing=on \
  updates=on \
  script="$PLUGIN_DIR/spotify.sh" \
  --subscribe spotify media_change
