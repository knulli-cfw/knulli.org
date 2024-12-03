<div class="preview-container">
  <img class="off-glb" src="/_inc/images/knulli-header-firefly.png"/>
</div>

# Welcome to KNULLI :material-gamepad:

## Firefly is here! [![Latest](https://img.shields.io/github/release/knulli-cfw/distribution.svg?labelColor=111111&color=5998FF&label=Latest&style=flat#only-light)](https://github.com/knulli-cfw/distribution/releases/latest)[![Latest](https://img.shields.io/github/release/knulli-cfw/distribution.svg?labelColor=dddddd&color=5998FF&label=Latest&style=flat#only-dark)](https://github.com/knulli-cfw/distribution/releases/latest)

We are happy to announce that **KNULLI Firefly** has gone public! Why "Firefly"? Starting with Firefly, all KNULLI releases will have a codename to indicate the release version. KNULLI Firefly comes with a lot of new features and improvements. These are just a few highlights:

* Added device support for the RG40XX H, RG40XX V and RGCubeXX
* Improved support for the [lid behavior](../configure/power-management) of the RG35XX SP (sleep mode or shutdown)
* Removed cardinal snapping of the joysticks of the RG35XX H and RG40XX H/V (Thanks to @thegammasqueeze!)
* Introduced [power management](../configure/power-management) to save battery life
* Added [RGB LED support](../configure/rgb-leds) for the RG40XX H/V and RGCubeXX
* Added Drastic-Steward as an additional NDS emulator
* Added support for 32bit PortMaster games
* Added a lot of new EmulationStation settings for various emulators
* Introduced [hotkey shortcut customization](../configure/retroarch/custom-hotkey-shortcuts) for RetroArch cores
* Improved support for native Pico-8
* Introduced [multi-resolution bezel decoration sets](../configure/customization/bezel-decorations) which may contain bezel decorations for various screen resolutions
* New bezel set *Default-KNULLI* with bezels for 4:3, 1:1, and 16:9 screens
* Tons of bugfixes and performance improvements

You will find the complete change log in the [release notes on GitHub](https://github.com/knulli-cfw/distribution/releases/latest).

If you are **new to KNULLI** and you want to get started: Head to the [Quick Start Guide](../play/quick-start) - it will guide you through the installation and your very first steps. If you are **already running KNULLI** and want to update to Firefly: Please **read the big red box** right below! In any case: We hope you enjoy playing your games with KNULLI!

!!! danger "Important: Read this before you update!"

    This version of KNULLI comes with a lot of new features which **require** to **re-flash** the firmware. We **strongly discourage** you from attempting a manual update - it will cause problems. Instead, we strongly suggest a **fresh installation** of KNULLI!

    Also be aware that the ext4 file system is still strongly recommended but no longer mandatory as explained in the [PortMaster and exFAT Guide](../guides/portmaster-and-exfat).

## About KNULLI

KNULLI is a custom firmware for retro gaming devices (handhelds, bartops, etc.). It's developed as a fork of [Batocera](https://batocera.org). It tries to provide support for devices that fall under at least one of these categories:

* There are no open-source kernel and/or u-boot sources available
* There are sources, but the kernel is either not mainline, and/or too old (e.g. devices with a BSP kernel 3.4 like the Egret II Mini)
* There is no GPU support or the GPU is not supported, so framebuffer is the only option
* It's a device that we own and have decided to build a CFW for it

## Features

KNULLI supports devices with GPU (GLES support) and framebuffer only (legacy).

* Emulation Station frontend for GPU based devices
* Simplemenu/Simplermenu+ for framebuffer only devices (also for GPU ones if preferred)
* RetroArch plus multiple libretro cores
* Wireless and Bluetooth support (including audio) when supported by the device
* Support for external USB wireless for those without internal wireless card
* Retroachievments
* Netplay
* Cover art/thumbnail scraper support

## Community

KNULLI uses Discord for discussions, it you would like to join us please use this link: [:simple-discord: Discord](https://discord.gg/HXPS3DAeeB)

## Licenses

KNULLI is a Linux distribution that is made up of many open-source components.  Components are provided under their respective licenses.  This distribution includes components licensed for non-commercial use only.

### Bundled Works
All other software is provided under each component's respective license.  These licenses can be found in the software sources or in this project's licenses folder.  Modifications to bundled software and scripts by the KNULLI team are licensed under the terms of the software being modified.

### Binary kernels and bootloaders

The releases for some devices include kernels and/or bootloaders that don't have source code available because the manufacturer has not published them. In those cases the device specific page includes instructions to extract those from the stock firmware.

## Credits

This project is not the work of one person, but it is the work of many people all over the world who have developed the open-source bits without which this project could not exist.  Special thanks to Batocera, muOS, JelOS, CoreELEC, LibreELEC, and to developers and contributors across the open-source community.
