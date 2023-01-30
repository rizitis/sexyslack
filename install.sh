#!/bin/bash



if [ "$EUID" -ne 0 ];then
    zenity --error \
       --title "Error Message" \
       --width 500 \
       --height 100 \
       --text "Permission denied. Please run install script as root"
    exit 1
fi

PWD=$(pwd)

set -e

# The default blacklist sexyslack doing to Gnome repo to save space and time...
mkdir -p /etc/sexyslack/ || exit
cp blacklist.txt /etc/sexyslack/
# These files MUST be placed always upstream, when sexyslack run first time will replace them, but needed to exist there for now.
mkdir -p /usr/src/sexyslack/Gnome || exit
cp BLACKLIST* /usr/src/sexyslack/Gnome/
# make script executable and put it to $PATH
chmod +x sexyslack && cp sexyslack /usr/local/bin/
chmod +x sexyslack-uninstall && cp sexyslack-uninstall /usr/local/bin/
