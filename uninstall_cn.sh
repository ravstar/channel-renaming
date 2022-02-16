#!/bin/bash
#
# Unistall channel_renaming script v1.0

hour="hhhh"
min="mmmm"

# Removing Cron
crontab -l | grep -v "$min $hour \* \* \* cd /usr/script/ && ./channel_renaming.sh " | crontab -

# Removing script
rm /usr/script/channel_renaming.sh

echo "channel_renaming script and crontab have been successfully removed"
echo
sleep 5

rm /usr/script/uninstall_cn.sh
