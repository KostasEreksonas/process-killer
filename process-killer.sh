#!/bin/sh

read -p "Enter a process name that you want to stop: " name

process=$(ps -ef | grep $name | cut -d " " -f 6 | head -n 1); kill -9 $process && xrandr --output eDP1 --auto --output DP1 --right-of eDP1 --auto
