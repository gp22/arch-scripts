#!/bin/bash

ISYAY=/sbin/yay
if [ -f "$ISYAY" ]; then
    echo -e "Yay was located, moving on.\n"
    yay -Suy
else
    echo -e "Yay was not located, please install it. Exiting script.\n"
    exit
fi

chmod 755 base.sh && ./base.sh
chmod 755 setup.sh && ./setup.sh
