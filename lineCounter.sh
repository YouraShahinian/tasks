#!bin/bash

# Create command with 'sed' which will count the lines, where will     meet the given word

sed -n "/error/I p" /usr/bin/syslog | sed -n "$ ="
