#!/bin/bash

lynx -dump https://www.usbr.gov/pn-bin/report_boise.pl | awk -f /home/loren/awk_prog/reservoir_pull/respull.awk

#date="$(date '+%b/%d/%Y')"
#lynx -dump https://www.usbr.gov/pn-bin/report_boise.pl | awk -v date="$date" -f respull.awk >> outfile
