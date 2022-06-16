#!/bin/bash
killall dwmblocks; dwmblocks &
bash $HOME/.screenlayout/screenlayout.sh &
$HOME/.fehbg &
picom &
#dockd --daemon &
