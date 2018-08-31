#!/bin/sh
python cookpw.py $1 > /tmp/wd-password.bin
sudo sg_raw -s 40 -i /tmp/wd-password.bin $2 c1 e1 00 00 00 00 00 00 28 00
rm /tmp/wd-password.bin
