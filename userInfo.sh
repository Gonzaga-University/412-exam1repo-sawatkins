#!/bin/bash

if [[ "$#" -ne 1 ]]; then
        echo "Usage: userInfo.sh <username>"
        exit
fi

if [[ -d /home/$1 ]]; then
        du -sh /home/$1 &&
        ls -ap | grep -v / | head
else
        echo "Error: User '$1' does not exit!"
fi

