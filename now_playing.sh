#!/bin/bash
# ------------------------------------------------------
#	File        : now_playing.sh
#	Author      : elchinot7
#	Email       : efraazu@gmail.com
#	Github      : https://github.com/elchinot7
#   Date        : Thu 18 Aug 2016 12:37:32 AM CDT
# ------------------------------------------------------
#	Description : Read the now-playing status for
#                  - Rhythmbox
#                  - Spotify
#                  - Absolute classic Rock
#                    (stremema.com)
# http://stream.absoluteradio.liquidcompass.net/ABSOLUTECRIRAACS?type=.flv
# ------------------------------------------------------
#   Usage:  This is used in tmux status bar from inside
#           ~/.vimrc:
#
#    let g:tmuxline_preset = {
#         <MORE PRESETS>
#         \'x': ['#(FULL/PATH/TO/THIS/tmuxbarmusic.sh)'],
#         <MORE PRESETS>
#          }
# ------------------------------------------------------

nowplaying=$(rhythmbox-client --no-start --print-playing)

if [[ $nowplaying == *"Absolute-Rock"* ]]; then
    echo "♫" $(streema.py)  # https://github.com/elchinot7/streema.py
elif [[ $nowplaying == " - " ]] || [[ $nowplaying == "" ]]; then
    echo "♫" $(stupify.py) # https://github.com/elchinot7/spotify_control.py
else
    echo  "♫ $nowplaying" | cut -c 1-32
fi
