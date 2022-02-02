#!bin/bash
# Task 2 - Create command with 'sed' which will count the given word in lines fo file and output the count

sed -n 's/.*\(error\).*/\1/I p' /usr/bin/syslog | sed -n "$ ="
