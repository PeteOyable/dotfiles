#!/bin/bash

sketchybar --add item volume right \
           --set volume \
            icon.color=$TEAL \
            icon.padding_left=10 \
            background.height=$BACKGROUND_HEIGHT \
            background.border_width="$BORDER_WIDTH" \
            background.border_color="$TEAL" \
            background.corner_radius="$CORNER_RADIUS" \
            background.color="$SURFACE" \
            label.padding_right=10 \
           script="$PLUGIN_DIR/volume.sh" \
           --subscribe volume volume_change
