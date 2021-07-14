#!/bin/bash
# hibernate and reboot into Ubuntu

#pkexec sync && sysctl -w vm.drop_caches=3
#bash /home/jchad/Scripts/hibernation/enable-hibernate-reboot.sh
#systemctl hibernate
s2disk -P 'shutdown method = reboot'
