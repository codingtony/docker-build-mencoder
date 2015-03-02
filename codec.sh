#!/bin/bash -e
mkdir -pv /mplayer_build
cd /mplayer_build && \
sudo mkdir -pv /usr/local/lib/codecs && \
if [ "$(uname -m)" = "x86_64" ]; then
 wget http://www.mplayerhq.hu/MPlayer/releases/codecs/essential-amd64-20071007.tar.bz2
 tar xjvf essential-amd64-20071007.tar.bz2
 cp -v essential-amd64-20071007/* /usr/local/lib/codecs
else
 wget http://www.mplayerhq.hu/MPlayer/releases/codecs/all-20110131.tar.bz2
 tar xjvf all-20110131.tar.bz2
 cp -v all-20110131/* /usr/local/lib/codecs
fi
