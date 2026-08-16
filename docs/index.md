<div class="preview-container">
  <img class="off-glb" src="/_inc/images/knulli-header-scarab.png"/>
</div>

# Welcome to KNULLI :material-gamepad:

## A new release has come into being! [![Latest](https://img.shields.io/github/release/knulli-cfw/knulli-linux.svg?labelColor=111111&color=5998FF&label=Latest&style=flat#only-light)](https://github.com/knulli-cfw/knulli-linux/releases/latest)[![Latest](https://img.shields.io/github/release/knulli-cfw/knulli-linux.svg?labelColor=dddddd&color=5998FF&label=Latest&style=flat#only-dark)](https://github.com/knulli-cfw/knulli-linux/releases/latest)

*"Only one may enter here, one whose worth lies far within."*

All the pieces have finally been put together for the release of **KNULLI Scarab**. We, the KNULLI team, are happy and proud to invite you into this cave of wonders!

KNULLI Scarab is a **major** update which brings a ton of new features and quality-of-life improvements. Most notably,

- KNULLI now fully supports the revised H700 devices of Anbernic's RG XX series
- Added support for BattleXP G350, GKD Pixel 2, Miyoo Flip, Powkiddy X55, Retroid Pocket 5, Flip 2, and many others
- **RetroArch** has been updated to **1.22.2**
- **Standalone Yabasanshiro** was added for better performance on SEGA Saturn emulation
- improved **[Syncthing integration](./configure/syncthing.md)** allows you to trigger syncs manually or even automatically on game exit while notifications keep you posted about transfer progress
- our new [**BatteryPlus**](./configure/batteryplus.md) gives you more precise information about your current battery state
- new and [improved RGB support via **Silky RGB**](./configure/rgb-leds.md) (thank you, [doughn0](https://github.com/doughn0/SilkyRGB)!)
- [**PortMaster**](./systems/portmaster.md/#installing-portmaster) can now be installed directly from the [*Device Settings* menu](./systems/portmaster.md/#installing-portmaster)
- A ton of **bugfixes** and **improvements** to system stability, performance, and battery life

You will find a complete list of all new features, fixes, and changes in the [change log](https://github.com/knulli-cfw/knulli-linux/blob/knulli-main/knulli-Changelog.md).

!!! warning "Major Update"

    This version of KNULLI comes with a lot of new features which **require to re-flash the firmware**. Specifically, we need to **change the partition table** of the SD card.

    Additionally, a lot of files and paths have been renamed between **Gladiator II** and **Scarab**, hence even your configuration files in the `system` folder will, once again, **not be compatible**.

    Hence, we **strongly recommend** to start over with a clean install. However, if you want to try migrating your user data from a previous installation to the new installation, please have a look at the [Major Updates guide](./guides/major-updates.md).

If you are **new to KNULLI** and want to get started: Head to the [Quick Start Guide](./play/quick-start.md) on our website - it will guide you through the installation and your very first steps.

In any case: We hope you enjoy playing your games with KNULLI!

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
