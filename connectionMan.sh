#!/bin/bash
ssh training@192.168.1.118 "bash -s" << EOF
cd /home/training/Desktop;
zip desktop.zip *;
exit
EOF

scp training@192.168.1.118:/home/training/Desktop/desktop.zip /home/youra/Desktop
