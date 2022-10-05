#!/bin/sh
BLANK='#00000000'
CLEAR='#00000000'
DEFAULT='#6272a4'
TEXT='#f8f8f2'
WRONG='#ff5555'
VERIFYING='#ffb86c'

# Mute Audio
amixer set Master toggle

# Pause all open media
playerctl pause

i3lock \
--insidever-color=$CLEAR     \
--ringver-color=$VERIFYING   \
\
--insidewrong-color=$CLEAR   \
--ringwrong-color=$WRONG     \
\
--inside-color=$BLANK        \
--ring-color=$DEFAULT        \
--line-color=$BLANK          \
--separator-color=$DEFAULT   \
\
--verif-color=$VERIFYING     \
--wrong-color=$WRONG         \
--time-color=$TEXT           \
--date-color=$TEXT           \
--layout-color=$TEXT         \
--keyhl-color=$WRONG         \
--bshl-color=$WRONG          \
\
--screen 1                   \
--blur 9                     \
--clock                      \
--time-str="%H:%M:%S"        \
--date-str="%a, %b %d, %Y"   \
--image="$HOME/.config/i3/lockscreen.png"
