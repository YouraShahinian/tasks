#!/bin/bash

mailTo=test@gmail.com
mailFrom=test@gmail.com
userPassword=test

ps -e -o uname,pid,comm | sed -ne':a;$p;N;11,$D;ba' >> ~/Desktop/mailBody.txt

echo $mailBody | s-nail -v -s "Test" \
  -S smtp-use-starttls \
  -S smtp-auth=login \
  -S smtp=smtp://smtp.gmail.com:587 \
  -S from=$mailFrom \
  -S smtp-auth-user=$mailFrom \
  -S smtp-auth-password=$userPassword \
  -S ssl-verify=ignore \
  -S nss-config-dir=/root/scripts \
    $mailTo \
 < ~/Desktop/mailBody.txt

rm ~/Desktop/mailBody.txt
