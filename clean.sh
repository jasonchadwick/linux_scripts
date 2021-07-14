#!/bin/bash
# clean up trash, downloads, etc

find /home/jchad/Downloads/* -mtime +7 -exec rm -rf {} \;
#find /home/jchad/Pictures/Screenshot* -atime +1 -exec rm {} \;
trash-empty 7
apt autoremove --purge --yes --allow-unauthenticated;
apt clean --yes --allow-unauthenticated;
#journalctl --vacuum-time=7d;
#find /home/jchad/GoogleDrive/.Trash/* -atime +7 -exec rm -rf {} \;
