#!/bin/bash

pactl set-sink-volume 0 -5%
kill -54 $(pidof dwmblocks)
#pkill -RTMIN+20 dwmblocks
