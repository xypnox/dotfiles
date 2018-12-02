#!/bin/bash
TMPBG=/tmp/screen.png
LOCK=$HOME/lock.png
RES=1920x1080

ffmpeg -f x11grab -video_size $RES -y -i $DISPLAY -filter_complex "boxblur=5:1,overlay=(main_w-overlay_w)/2:(main_h-overlay_h)/2" -vframes 1 $TMPBG
i3lock -i $TMPBG
