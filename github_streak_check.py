#!/usr/bin/env python

import json
import sys
import re
import smtplib

# Use the first arg as the message to send, or use the default if not specified
default_message = "You haven't committed anything today!"
message = sys.argv[1] if len(sys.argv) > 1 else default_message


# Get Github contributions activity from stdin
contributions_page = sys.stdin.read()

# pull out the latest square
dayrect = re.compile(r'(?<=\<rect)[^\>]*(?=\>)')
matches = dayrect.findall(contributions_page)
today = matches[-1]

committed = re.compile(r'(?<=fill=\")[^\"]*(?=\")')
committed_color = committed.findall(today)[0]

# print to stdout and let crontab handle it
if committed_color == "#eeeeee":
    print message


