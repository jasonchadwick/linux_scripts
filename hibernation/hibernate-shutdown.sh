#!/bin/bash
# hibernate, don't do anything else

#pkexec sync && sysctl -w vm.drop_caches=3
#bash /home/jchad/Scripts/hibernation/disable-hibernate-reboot.sh
#systemctl hibernate

pm-hibernate
