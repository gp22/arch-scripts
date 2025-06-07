#!/bin/bash

ISYAY=/sbin/yay
if [ -f "$ISYAY" ]; then
    echo -e "Yay was located, moving on.\n"
    yay -Suy
else
    echo -e "Yay was not located, please install it. Exiting script.\n"
    exit
fi

chmod +x base.sh && ./base.sh
chmod +x setup.sh && ./setup.sh
