<div class="preview-container">
  <img class="off-glb" src="/_inc/images/knulli-header-gladiator.png"/>
</div>

# Welcome to KNULLI :material-gamepad:

## Here comes the Gladiator! [![Latest](https://img.shields.io/github/release/knulli-cfw/distribution.svg?labelColor=111111&color=5998FF&label=Latest&style=flat#only-light)](https://github.com/knulli-cfw/distribution/releases/latest)[![Latest](https://img.shields.io/github/release/knulli-cfw/distribution.svg?labelColor=dddddd&color=5998FF&label=Latest&style=flat#only-dark)](https://github.com/knulli-cfw/distribution/releases/latest)

*"Are you not entertained?!"*

Well, if you are not, this changes now: **KNULLI Gladiator** has gone public! The brand new version of KNULLI comes loaded with a whole lot of new features and improvements, such as:

- Added device support for the Anbernic RG34XX
- Improved support for TrimUI devices (RGB, suspend mode, d-pad-as-stick toggle)
- Switched default file system to exFAT
- Added [quick resume mode](../configure/quick-resume) to boot directly back into your game
- Improved Bluetooth and Wi-Fi connectivity
- Automated assignment of [controllers](../configure/controls) to players
- Automated switch between [Bluetooth](../configure/bluetooth) audio and built-in speakers
- Extended [power management](../configure/power-management) settings in EmulationStation
- Integrated [RGB settings](../configure/rgb-leds) into EmulationStation
- Improved RGB behavior
- Improved power management and battery saving
- Improved EmulationStation launch speed
- Replaced Drastic-Steward with Advanced Drastic as an new NDS emulator
- Added [MPV media player](../systems/media-player)
- Automated detection of [ScummVM](../systems/scummvm) games
- Applied 60 Hz patches for RG35XX SP, RG34XX, and RG CubeXX (Thanks to [@TheGammaSqueeze](https://github.com/TheGammaSqueeze)!)
- Tons of bugfixes and performance improvements

You will find a complete list of all new features, fixes, and changes in the [change log](https://github.com/knulli-cfw/distribution/blob/knulli-main/knulli-Changelog.md).

If you are **new to KNULLI** and want to get started: Head to the [Quick Start Guide](../play/quick-start) on our website - it will guide you through the installation and your very first steps.

If you are already running KNULLI and want to **upgrade** to Gladiator: Be aware that this is a **minor** upgrade, so re-flashing is not required when updating from **Firefly** to **Gladiator**. You can simply update as explained in the [Update](../play/update) section.

However, if you run a KNULLI version older than Firefly, re-flashing is **mandatory**, in this case, maybe follow the [Major Updates guide](../guides/major-updates).

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
