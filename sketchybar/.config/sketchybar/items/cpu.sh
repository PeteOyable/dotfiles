#!/bin/bash

sketchybar --add item cpu right \
           --set cpu update_freq=20 \
                      icon=$CPU \
            icon.color=$PEACH \
            icon.padding_left=10 \
            background.height=$BACKGROUND_HEIGHT \
            background.border_width="$BORDER_WIDTH" \
            background.border_color="$PEACH" \
            background.corner_radius="$CORNER_RADIUS" \
            background.color="$SURFACE" \
            label.padding_right=10 \
                      script="$PLUGIN_DIR/cpu.sh"
