#!/bin/bash
# clean up trash, downloads, etc

find /home/jchad/Downloads/* -atime +7 -exec rm -rf {} \; > /home/jchad/scripts/log/clean/clear-downloads.log 2>&1;
find /home/jchad/Pictures/Screenshot* -mtime +7 -exec rm {} \; > /home/jchad/scripts/log/clean/delete-screenshots.log 2>&1;
trash-empty 7 > /home/jchad/scripts/log/clean/trash-empty.log 2>&1;
apt autoremove --purge --yes --allow-unauthenticated > /home/jchad/scripts/log/clean/apt-autoremove.log 2>&1;
apt clean --yes --allow-unauthenticated > /home/jchad/scripts/log/clean/apt-clean.log 2>&1;
journalctl --vacuum-time=7d > /home/jchad/scripts/log/clean/journal-vacuum.log 2>&1;
