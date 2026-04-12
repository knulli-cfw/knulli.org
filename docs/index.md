<div class="preview-container">
  <img class="off-glb" src="/_inc/images/knulli-header-gladiator-ii.png"/>
</div>

# Welcome to KNULLI :material-gamepad:

## It's time for a sequel! [![Latest](https://img.shields.io/github/release/knulli-cfw/distribution.svg?labelColor=111111&color=5998FF&label=Latest&style=flat#only-light)](https://github.com/knulli-cfw/distribution/releases/latest)[![Latest](https://img.shields.io/github/release/knulli-cfw/distribution.svg?labelColor=dddddd&color=5998FF&label=Latest&style=flat#only-dark)](https://github.com/knulli-cfw/distribution/releases/latest)

*"Is this how Rome treats its heroes?"*

Oh yes, it is! KNULLI Gladiator was *so* good, it was bound to get a sequel. Hence, we are proud to announce that **KNULLI Gladiator II** has just gone public!

The new version is an update of KNULLI Gladiator, using still the same emulator versions etc. However, the new version comes with a couple of bugfixes and quality-of-life improvements. Most prominently, with Gladiator II, we finally introduce **OTA (over the air) updates** which will enable you to install future updates directly on-device!

We can't make any promises, obviously, but unless we make any **huge** changes which would require a reflash, you will be able to install **all future** KNULLI updates via OTA. (This will **not** shorten development cycles though! Expect OTA updates about every 3-4 month or so on the **stable** update channel.)

You will find a complete list of all new features, fixes, and changes in the [change log](https://github.com/knulli-cfw/distribution/blob/knulli-main/knulli-Changelog.md). However, here are some highlights:

### New features of KNULLI Gladiator II

- Added **device support** for Anbernic RG34XX SP, RG35XX Pro and Powkiddy V90S, V20
- **[Over-the-air updates](./play/update.md)** via the *Updates & Downloads* menu will make future updates considerably more easy
- **SMB (SAMBA)** is now a [**service** you can turn on/off](./play/add-games/network-transfer.md) which is **disabled** by default
- Added a toggle for always [auto-assigning](./configure/controls.md) the **built-in controls** to player one and fixed issues with **USB controller assignment**
- Fixed issues with **standalone Dreamcast/PSP emulators** on **A133** devices (TrimUI Brick, TrimUI Smart Pro)
- Bezel decorations
    - are now **enabled automatically** when *Decoration Set* is set to *Auto*
    - are now supported for **standalone** emulators on **H700** devices (Anbernic RG XX series)
    - now come with a set *Default-Knulli-SP* specifically for **GBA** to give **SP** vibes on 4:3 clamshell displays
- A **Disk Check** utility to verify your SD card's integrity was added to *System Settings* → *Frontend Developer Options*
- **Soft reset** [hotkey shortcut](./play/hotkey-shortcuts.md) can be used to force EmulationStation to restart
- **[Factory reset](./configure/reset-to-factory-settings.md)** is now possible on-device via EmulationStation
- A ton of **bugfixes** and **improvements** to system stability, performance, and battery life

!!! warning "Major Update"

    This version of KNULLI comes with a lot of new features which **require to re-flash the firmware**. Specifically, we need to **increase partition size** of the `BATOCERA` drive to accommodate OTA updates in the future.
    
    If you **update** from **Gladiator** to **Gladiator II**, you may keep your `system` folder and adopt all your previous settings, there will not be any compatibility issues between those two versions.
    
    For everyone else, we **strongly recommend** to simply start over with a clean install. However, if you want to try migrating your user data from a previous installation to the new installation, please have a look at the [Major Updates guide](./guides/major-updates.md).

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
