#!/bin/sh

sudo su

# Install some generic packages that are used often
sudo apt install nmap tshark tldr vlc virtualbox krita

# Install gnome customization packages
gnome-tweaks nome-shell-extensions

# Install wine and dependencies
sudo apt install wine winetricks
sudo dpkg --add-architecture i386 && apt-get update && apt-get install wine32:i386

winetricks directx9
winetricks vcrun6sp6

# Install Android Studio dependencies 32bit

sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386
sudo apt install qemu qemu-kvm libvirt-bin

# Install KVM

sudo apt-get install qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils

# Install docker & docker compose

sudo apt install docker docker-compose
modprobe kvm
modprobe kvm_intel
# kvm-ok
# lsmod | grep kvm
# ls -al /dev/kv
sudo usermod -aG kvm $USER

sudo apt-get update
sudo apt-get install ca-certificates curl gnupg

sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

sudo apt install gnome-terminal
sudo apt remove docker-desktop

rm -r $HOME/.docker/desktop
sudo rm /usr/local/bin/com.docker.cli
sudo apt purge docker-desktop

curl -L -o docker-desktop.deb https://desktop.docker.com/linux/main/amd64/docker-desktop-4.21.1-amd64.deb?utm_source=docker&utm_medium=webreferral&utm_campaign=docs-driven-download-linux-amd64 
sudo apt-get update
sudo apt-get install ./docker-desktop.deb
rm docker-desktop.deb

# If signing int as well to docker-desktop, follow the instructions when prompted

systemctl --user enable docker-desktop
systemctl --user start docker-desktop

# Update/upgrade the system
sudo apt update
sudo apt upgrade
