#!/bin/bash                                                                                                                                                                                                                         
#PUT THIS IN /etc/udev/rules.d/90-thinkpad-dock.rules
#KERNEL=="card0", SUBSYSTEM=="drm", ENV{DISPLAY}=":0", ENV{XAUTHORITY}="/home/owen/.Xauthority", RUN+="/home/owen/misc/scripts/dockToggle.sh"

export DISPLAY=:0
export XAUTHORITY=/home/owen/.Xauthority

MONITOR='DP2-3'
LAPTOP='eDP1'

MONITOR_STATE=$(xrandr | grep "$MONITOR connected")

if [[ -n $MONITOR_STATE ]]; then
    #xrandr --output $MONITOR --auto
    #xrandr --output $LAPTOP --off
    
    xrandr --output eDP1 --primary --mode 1366x768 --pos 0x282 --rotate normal --output DP1 --off --output DP2 --off --output DP2-1 --off --output DP2-2 --off --output DP2-3 --mode 1680x1050 --pos 1366x0 --rotate normal --output HDMI1 --off --output HDMI2 --off --output VIRTUAL1 --off
    /home/owen/.fehbg

else
    #xrandr --output $MONITOR --off
    #xrandr --output $LAPTOP --auto

    xrandr --output eDP1 --primary --mode 1366x768 --pos 0x0 --rotate normal --output DP1 --off --output DP2 --off --output DP2-1 --off --output DP2-2 --off --output DP2-3 --off --output HDMI1 --off --output HDMI2 --off --output VIRTUAL1 --off
    /home/owen/.fehbg

fi
