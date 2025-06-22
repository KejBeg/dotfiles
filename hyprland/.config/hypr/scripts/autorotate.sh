#!/bin/bash

monitor-sensor | while read -r line; do
  if [[ $line == *"normal"* ]]; then
		hyprctl keyword monitor eDP-1,preferred,auto,1,transform,0
  elif [[ $line == *"left-up"* ]]; then
		hyprctl keyword monitor eDP-1,preferred,auto,1,transform,1
  elif [[ $line == *"right-up"* ]]; then
		hyprctl keyword monitor eDP-1,preferred,auto,1,transform,3
  elif [[ $line == *"bottom-up"* ]]; then
		hyprctl keyword monitor eDP-1,preferred,auto,1,transform,2
  fi
done

