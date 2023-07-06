#/!bin/sh

# install dependencies
sudo apt install python3 python3-gi meson xdotool libinput-tools gettext

sudo gpasswd -a $USER input

# Fetch and setup gesture package
git clone https://github.com/bulletmark/libinput-gestures.git
cd libinput-gestures
sudo make install
sudo ./libinput-gestures-setup install

# Set gestures to autostart with the system
libinput-gestures-setup start
libinput-gestures-setup autostart

# Fetch and setup gesture UI package
git clone https://gitlab.com/cunidev/gestures
cd gestures
meson build --prefix=/usr
ninja -C build
sudo ninja -C build install

# Clean up
sudo rm -R libinput-gestures/
