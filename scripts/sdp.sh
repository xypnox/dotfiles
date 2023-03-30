#!/bin/dash

find . -type f -print0 | xargs -0 sd "$1" "$2"
