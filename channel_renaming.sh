#!/bin/sh
#
# v1.0

# This script will remove unwanted alphanumerics or special characters from bouquet channel names i.e. |UK| [UK] [HD] 
# it will break on whitespace
workdir="/etc/enigma2"
cd $workdir/
for i in $(find -name "userbouquet.jmx_live_iptv*.tv"); do 
    sed -i 's/DESCRIPTION \[.*\]/DESCRIPTION/g;s/DESCRIPTION #\[.*\]/DESCRIPTION/g;s/DESCRIPTION |[^ ]*|/DESCRIPTION/g;s/DESCRIPTION |[^ ]*|/DESCRIPTION/g;s/DESCRIPTION |[^ ]*|/DESCRIPTION/g;s/DESCRIPTION |[^ ]*|/DESCRIPTION/g' "$workdir/"$i""
done
cd

/sbin/shutdown -r +1

exit 
