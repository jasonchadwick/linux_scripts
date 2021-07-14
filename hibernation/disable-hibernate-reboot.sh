#!/bin/bash
# disable "reboot on hibernate"

if [ -f /etc/systemd/sleep.conf ]; then
    sudo mv /etc/systemd/sleep.conf /etc/systemd/sleep.conf.bak
fi
sudo printf "[Sleep]\n" > /etc/systemd/sleep.conf
