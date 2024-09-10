#!/bin/bash
wal -c && ls $HOME/wallpapers/* | rofi -dmenu -kb-cancel Escape -theme "$HOME"/.config/rofi/config/launcher.rasi | tee >(xargs cat > ~/wallpapers/current.jpg) >(xargs wal -i)
