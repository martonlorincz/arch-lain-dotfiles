#!/bin/sh

echo "<img>/usr/share/icons/Papirus-Dark/32x32/devices/network-wireless.svg</img>"

echo "<txt>:" $(awk 'NR==3 {printf("%.0f%%\n",$3*10/7)}' /proc/net/wireless)"</txt>"
