#!/bin/bash

xsetroot -name " $(upower -i /org/freedesktop/UPower/devices/battery_BAT1 | awk '/percentage/ {print $2}') $(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | awk '/percentage/ {print $2}') $( date +"  %x %l:%M %p" )"
