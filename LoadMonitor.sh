#!/bin/bash
r=$(cat /proc/loadavg | awk -F. '{print $1}')
if [ $r -ge 6 ]
then
/bin/mail -s "Warning: High Server Load on: `droplet.impelcrm.in` Load Average: $r"   arunkumar@impelcrm.in
fi
nothing doing here....