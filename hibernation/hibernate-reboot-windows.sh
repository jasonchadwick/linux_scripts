#!/bin/bash
# hibernate and reboot into Windows

#pkexec sync && sysctl -w vm.drop_caches=3
#bash /home/jchad/Scripts/hibernation/enable-hibernate-reboot.sh
#systemctl hibernate
efibootmgr --bootnext 0000 
s2disk -P 'shutdown method = reboot'
