#!/bin/bash
sudo -s
cd /usr/local/src/
wget http://www.no-ip.com/client/linux/noip-duc-linux.tar.gz
tar xf noip-duc-linux.tar.gz
cd noip-2.1.9-1
make install
chmod 700 /usr/local/bin/noip2
chmod root:root /usr/local/bin/noip2
echo "Insert into /etc/rc.local before end:"
echo "/usr/local/bin/noip2"
echo "Then reboot.  ps -A | grep noip2 ...should show noip2 running."

