#!/bin/bash

maim -u -s $HOME/Pictures/rect/$(date +%F-%a-%H-%M_ns%N).png &&
notify-send -t 1000 "Screenshot has been saved."
