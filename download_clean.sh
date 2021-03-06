#!/bin/sh
#
# Moves to trash files in Downloads folder older than 7 days.
#
# HOW TO USE:
# Put download_clean in $HOME/bin
# Execute "export PATH=$PATH:$HOME/bin"
# Execute "chmod +x $HOME/bin/download_clean"
# Execute "download_clean"
#
# Tomas Garcia de Miguel
# https://github.com/togademi

TRASH=~/.local/share/Trash/files/

find ~/Downloads/* -maxdepth 0 -type f -mtime +7 -exec mv -fv {} $TRASH \;

exit 0
