# Dell XPS 15 7590 Ubuntu
Tutorial for installing ubuntu with my personal settings

## Step 0 - Configuring the UEFI (Specific to this model)
- Under 'System Configuration', change the SATA Mode from the default "RAID" to "AHCI". This will allow Linux to detect the NVMe SSD.
- Under 'Secure Boot', disable Secure Boot to allow Linux to boot.
- Under 'POST Behaviour', change "Fastboot" to "Thorough". This prevents intermittent boot failures.

## Step 1 - Download and install Ubuntu
Following the official Ubuntu documentation: https://ubuntu.com/tutorials/install-ubuntu-desktop

## Step 2 - Configuring frimware, thermal management, power management, graphics & finger print reader

# References
- Ubuntu installation/documentation: https://ubuntu.com/
- Ubuntu configuration for Dell CPS 15 7590 model: https://wiki.archlinux.org/title/Dell_XPS_15_(7590)
