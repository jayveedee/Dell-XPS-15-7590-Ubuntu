#!/bin/sh

sudo su

# Install some generic packages that are used often
sudo apt install nmap tshark tldr 

# Install gnome customization packages
gnome-tweaks nome-shell-extensions

# Install wine and dependencies
sudo apt install wine winetricks
sudo dpkg --add-architecture i386 && apt-get update && apt-get install wine32:i386

winetricks directx9
winetricks vcrun6sp6

# Update/upgrade the system
sudo apt update
sudo apt upgrade
