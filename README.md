# Dell XPS 15 7590 Ubuntu
Tutorial for installing ubuntu with my personal settings

## Step 0 - Configuring the UEFI (Specific to this model)
- Under 'System Configuration', change the SATA Mode from the default "RAID" to "AHCI". This will allow Linux to detect the NVMe SSD.
- Under 'Secure Boot', disable Secure Boot to allow Linux to boot.
- Under 'POST Behaviour', change "Fastboot" to "Thorough". This prevents intermittent boot failures.

## Step 1 - Download and install Ubuntu
Following the official Ubuntu documentation: https://ubuntu.com/tutorials/install-ubuntu-desktop

## Step 2 - Configuring keyboard shortcuts

## Step 3 - Installing essential packages and adding Gnome-Tweaks and extensions
execute the [`installEssentialPackages.sh`](https://github.com/jayveedee/Dell-XPS-15-7590-Ubuntu/blob/main/installEssentialPackages.sh) script to get the most basic packages, such as nmap, tshark, gnome-tweaks and so on

Extensions:
- system-monitor-next
  - if when installing you get a "meta null" error, try installing these dependencies `sudo apt install gir1.2-gtop-2.0 gir1.2-nm-1.0 gnome-system-monitor`
- Dash to Dock
- Workspace Matrix

## Step 4 - Configuring gestures
Following the guide from https://kaigo.medium.com/mac-like-gestures-on-ubuntu-20-04-dell-xps-15-7ea6e3be7f76 

I created a script to easiliy install the gesture packages via the [`installMacLikeGesturePackages.sh`](https://github.com/jayveedee/Dell-XPS-15-7590-Ubuntu/blob/main/installMacLikeGesturePackages.sh)

When opening the Gesture UI, these are my settings
- xdotool Super+ctrl+Left    -- Swipe right, 3 fingers    -- navigate to the left workspace
- xdotool Super+ctrl+Right   -- Swipe left, 3 fingers     -- navigate to the right workspace
- xdotool Super+Up           -- Swipe up, 4 fingers       -- maximize window
- xdotool Super+Down         -- Swipe down, 4 fingers     -- normalize window
- xdotool Super+Left         -- Swipe left, 4 fingers     -- snap window to the left side of the screen
- xdotool Super+Right        -- Swipe right, 4 fingers    -- snap window to the right side of the screen

Super+ctrl+Left & Super+ctrl+Right need to be changed in the keyboard shortcuts, otherwise it will be the default

# References
- Ubuntu installation/documentation: https://ubuntu.com/
- Ubuntu configuration for Dell CPS 15 7590 model: https://wiki.archlinux.org/title/Dell_XPS_15_(7590)
- Goodix fingerprint reader:
  - https://askubuntu.com/questions/1362986/how-do-i-get-the-fingerprint-reader-to-work-in-ubuntu-21-04-xps-15
  - https://www.dell.com/community/XPS/XPS-13-9300-Does-fingerprint-reader-work-on-linux/td-p/7514958/page/3
- Gestures: https://kaigo.medium.com/mac-like-gestures-on-ubuntu-20-04-dell-xps-15-7ea6e3be7f76
- Setup: https://medium.com/@asad.manji/my-journey-installing-ubuntu-20-04-on-the-dell-xps-15-9500-2020-8ac8560373d1
- system-monitor-next meta null error: https://github.com/mgalgs/gnome-shell-system-monitor-applet/issues/36
