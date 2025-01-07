#!/bin/bash
# <bitbar.title>UTC Time</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>

echo "$(TZ=UTC date "+%H%M") Z|dropdown=false"
echo "---"
echo "0:00 = 9:00"
echo "3:00 = 12:00"
echo "6:00 = 15:00"
echo "9:00 = 18:00"
echo "12:00 = 21:00"
echo "15:00 = 24:00"
echo "18:00 = 3:00"
echo "21:00 = 6:00"