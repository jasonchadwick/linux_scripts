#!/bin/bash
# hibernate and reboot into Ubuntu

echo "HIBERNATE_MODE=reboot" > /etc/pm/config.d/config
pm-hibernate