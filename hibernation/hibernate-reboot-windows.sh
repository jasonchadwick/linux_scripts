#!/bin/bash
# hibernate and reboot into Windows

efibootmgr --bootnext 0000 
echo "HIBERNATE_MODE=reboot" > /etc/pm/config.d/config
pm-hibernate