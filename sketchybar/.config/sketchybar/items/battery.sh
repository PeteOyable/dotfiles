#!/bin/bash

sketchybar --add item battery right \
           --set battery \
           update_freq=120 \
            icon.color=$BLUE \
            icon.padding_left=10 \
            background.height=$BACKGROUND_HEIGHT \
            background.border_width="$BORDER_WIDTH" \
            background.border_color="$BLUE" \
            background.corner_radius="$CORNER_RADIUS" \
            background.color="$SURFACE" \
            label.padding_right=10 \
           script="$PLUGIN_DIR/battery.sh" \
           --subscribe battery system_woke power_source_change
