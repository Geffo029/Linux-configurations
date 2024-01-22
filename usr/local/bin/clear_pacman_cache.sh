#!/usr/bin/env bash

log_file="/home/stefano/Logs/clean_pacman_cache.log"

echo '' >> $log_file
date '+%d-%b-%Y, %H:%M' >> $log_file
echo 'Cache of installed packages:' >> $log_file
paccache --remove --keep 1 --nocolor | tr -d "\n" >> $log_file
echo -e '\nCache of uninstalled packages' >> $log_file
paccache --remove --uninstalled --keep 0 --nocolor | tr -d "\n" >> $log_file
echo -e '\n--------------------------------------------------------------------' >> $log_file
