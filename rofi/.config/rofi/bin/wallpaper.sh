#!/bin/bash
wal -c && ls $HOME/wallpapers/* | rofi -dmenu -kb-cancel Escape | tee >(xargs cat > ~/wallpapers/current.jpg) >(xargs wal -i)
