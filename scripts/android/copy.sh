#!/bin/sh
cp /home/fabrizio/.dotfiles/scripts/android/adbm /usr/bin/adbm
cp /home/fabrizio/.dotfiles/scripts/android/surf_android /usr/bin/surf_android
chown fabrizio:fabrizio /usr/bin/adbm
chmod +x /usr/bin/adbm
cp /home/fabrizio/.dotfiles/scripts/android/adberror /usr/bin/adberror
chmod +x /usr/bin/adberror
cp /home/fabrizio/.dotfiles/scripts/android/adbwarning /usr/bin/adbwarning
chmod +x /usr/bin/adbwarning
cp /home/fabrizio/.dotfiles/scripts/android/run_app /usr/bin/run_app
chmod +x /usr/bin/run_app
cp /home/fabrizio/.dotfiles/scripts/android/cleanProject /usr/bin/cleanProject
chmod +x /usr/bin/cleanProject
cp /home/fabrizio/.dotfiles/scripts/android/headless_emu /usr/bin/headless_emu
chmod +x /usr/bin/headless_emu
cp /home/fabrizio/.dotfiles/scripts/android/record /usr/bin/record
chmod +x /usr/bin/record
