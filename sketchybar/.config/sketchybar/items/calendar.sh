#!/bin/bash

sketchybar --add item calendar right \
           --set calendar \
           update_freq=30 \
           icon=$CALENDAR \
            icon.color=$FLAMINGO \
            icon.padding_left=10 \
            background.height=$BACKGROUND_HEIGHT \
            background.border_width="$BORDER_WIDTH" \
            background.border_color="$FLAMINGO" \
            background.corner_radius="$CORNER_RADIUS" \
            background.color="$SURFACE" \
            label.padding_right=10 \
           script="$PLUGIN_DIR/calendar.sh"
