#!/bin/bash


# ./configure --prefix=~/firefox/ --enable-official-branding --disable-updater --disable-installer --disable-accessibility --enable-application=browser --disable-gnomevfs --disable-gnomeui --enable-optimize --enable-update-channel=release --enable-update-packaging --disable-debug --disable-tests
# make -j5 && make -j5 install

#/usr/bin/firefox-bin -ProfileManager -no-remote
/usr/bin/firefox -ProfileManager -no-remote

#/home/darshan/software/firefox/firefox -ProfileManager -no-remote
