#!/opt/homebrew/bin/bash

declare -A WORKSPACES=(
[B]="5"
[C]="4"
[D]="3"
[M]="2"
[T]="1"
)
SID=$($(echo aerospace list-workspaces --focused))
INDEX=${WORKSPACES[$SID]}
LENGTH=5
if [ $INDEX -eq 1 ]; then
  LEFT=$((30 * INDEX))
elif [ $INDEX -eq 5 ]; then
  LEFT=$(((30 * INDEX) + (12 * (INDEX - 1) + 6)))
else
  LEFT=$(((30 * INDEX) + (12 * (INDEX - 1))))
fi

sketchybar --animate circ 15 \
  --set highlight_space background.padding_left=$((-LEFT))
