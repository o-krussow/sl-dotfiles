#!/bin/bash                                                                                                                                                                                   
#MOVE THIS FILE TO /etc/acpi/actions

export DISPLAY=:0
export XAUTHORITY=$HOME/.Xauthority

su -c /usr/local/bin/slock $USER &
