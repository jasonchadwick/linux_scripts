#!/bin/bash
# hibernate, don't do anything else

echo "HIBERNATE_MODE=shutdown" > /etc/pm/config.d/config
pm-hibernate