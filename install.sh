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
TMP=$(/tmp)
set -e

# These files MUST be placed always upstream to be always updated, thats sexyslack job when it running not now.
rm BLACKLIST*

# The default blacklist sexyslack doing to Gnome repo to save space and time...
mkdir -p /etc/sexyslack/ || exit
cp blacklist.txt /etc/sexyslack/

chmod +x sexyslack && cp sexyslack /usr/local/bin/
chmod +x sexyslack-uninstall && cp sexyslack-uninstall /usr/local/bin/

cd "$TMP" || exit
rm -r "$PWD"


