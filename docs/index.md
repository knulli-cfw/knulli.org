<div class="preview-container">
  <img class="off-glb" src="_inc/images/knulli-booting-up.png"/>
</div>

# Welcome to the KNULLI Wiki :material-gamepad:

KNULLI is a custom firmware for retro gaming devices (handhelds, bartops, etc.). It's developed as a fork of [Batocera](https://batocera.org). It tries to provide support for devices that fall under at least one of these categories:

* There are no open source kernel and/or u-boot sources available
* There are sources, but the kernel is either not mainline, and/or too old (e.g. devices with a BSP kernel 3.4 like the Egret II Mini)
* There is no GPU support or the gpu is not supported, so framebuffer is the only option
* It's a device that I own and have decided to build a CFW for it

## Features

KNULLI supports devices with GPU (GLES support) and framebuffer only (legacy).

* Emulation Station frontend for GPU based devices
* Simplemenu/Simplermenu+ for framebuffer only devices (also for GPU ones if preferred)
* RetroArch plus multiple libretro cores
* Wireless and Bluetooth support (including audio) when supported by the device
* Support for external USB wireless for those without internal wireless card
* Retroachivements
* Netplay
* Cover art/thumbnail scrapper support

## Community

KNULLI uses Discord and github discussion pages for discussion, it you would like to join us plesae use this link: [:simple-discord: Discord](https://discord.gg/QZKr2QFA)

## Licenses

KNULLI is a Linux distribution that is made up of many open-source components.  Components are provided under their respective licenses.  This distribution includes components licensed for non-commercial use only.

### Bundled Works
All other software is provided under each component's respective license.  These licenses can be found in the software sources or in this project's licenses folder.  Modifications to bundled software and scripts by the KNULLI team are licensed under the terms of the software being modified.

### Binary kernels and bootloaders

The releases for some devices include kernels and/or bootloaders that don't have source code available because the manufacturer has not published them. In those cases the device specific page includes instructions to extract those from the stock firmware.

## Credits

This project is not the work of one person but it is the work of many persons all over the world who have developed the open source bits without which this project could not exist.  Special thanks to Batocera, muOS, JelOS, CoreELEC, LibreELEC, and to developers and contributors across the open source community.
