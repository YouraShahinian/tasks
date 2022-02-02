#!/bin/bash
# If You are a macOS user, change "wlp3s0" to "en0"

ifconfig wlp3s0 | sed -nr 's/.*inet ([^ ]+).*/\1/p' >> ~/Desktop/myIPAdress.txt


