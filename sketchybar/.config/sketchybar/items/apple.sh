#!/bin/bash

apple_logo=(
  icon=$APPLE
  icon.color=$BLUE
  label.drawing=off
  padding_right=10
)

sketchybar --add item apple.logo left                  \
           --set apple.logo "${apple_logo[@]}"
