#!/bin/bash

sketchybar --add event aerospace_workspace_change
for sid in ${WORKSPACES[@]};
do
    sketchybar \
      --add item space.$sid left \
      --subscribe space.$sid aerospace_workspace_change \
      --set space.$sid \
      icon=${sid} \
      icon.width=30 \
      icon.align=center \
      icon.color=$WHITE \
      icon.font="$FONT:Semibold:14.0" \
      label.drawing=off \
      background.color=$BLUE \
      background.corner_radius=11 \
      background.height=22 \
      background.width=22 \
      background.drawing=off \
      click_script="aerospace workspace $sid" \
      script="$PLUGIN_DIR/aerospace.sh $sid"
done

# consolidate space numbers and add a background
sketchybar \
  --add bracket spaces '/space\..*/' new_space                \
  --set spaces background.color=$SURFACE            \
  background.corner_radius=$CORNER_RADIUS            \
  background.border_width=$BORDER_WIDTH              \
  background.border_color=$RED          \
  blur_radius=12                         \
  background.height=$BACKGROUND_HEIGHT

sketchybar \
  --add item separator left \
  --set separator icon=􀁴 \
  icon.font="$FONT:Semibold:16.0" \
  background.padding_left=15 \
  background.padding_right=10 \
  label.drawing=off \
  icon.color="$YELLOW"
