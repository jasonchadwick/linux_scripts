#!/bin/sh
# backup certain things that would be nice to have if I reinstall Ubuntu (installed packages etc)

apt=$(comm -23 $(apt-mark showmanual | sort -u) $(gzip -dc /var/log/installer/initial-status.gz | sed -n 's/^Package: //p' | sort -u))
$apt > /home/jchad/backup/apt-manually-installed.txt

crontab -l > /home/jchad/backup/sudo-crontab.txt

sudo -u jchad crontab -l > /home/jchad/backup/crontab.txt

conda env export -n base --from-history > /home/jchad/backup/conda.txt

dconf dump /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/ > /home/jchad/backup/keyboard-shortcuts.txt
# restore: dconf load /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/ < /home/jchad/backup/keyboard-shortcuts.txt
