#!/bin/sh
# Completely uninstall Firefox
sudo apt-get purge firefox
sudo rm -rf ~/.mozilla/firefox/ ~/.macromedia/ ~/.adobe /etc/firefox/ /usr/lib/firefox/ /usr/lib/firefox-addons/
sudo reboot
exit 0
