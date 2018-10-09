#!/bin/bash

# Only if i3 is running
if pgrep -x "i3" > /dev/null
then
    echo "i3lock starting."
    scrot -z /tmp/screen.png
    #convert /tmp/screen.png -blur 0x10 /tmp/blurred.png
    convert /tmp/screen.png -scale 10% -scale 1000% /tmp/blurred.png
    i3lock -i /tmp/blurred.png -f -p default
    rm /tmp/screen.png
    rm /tmp/blurred.png 
else
    echo "i3lock not starting."
fi
