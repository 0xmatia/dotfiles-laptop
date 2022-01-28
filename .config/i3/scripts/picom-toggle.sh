#!/bin/bash
if pgrep -x "picom" > /dev/null
then
	killall picom
else
	picom -b --vsync --config ~/.config/i3/picom.conf
fi
