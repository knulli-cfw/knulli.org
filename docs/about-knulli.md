# About KNULLI :material-gamepad:

Hi there! Welcome to KNULLI!

KNULLI is a custom firmware (CFW) for retro-gaming devices. It is developed as a fork of the very well-known [Batocera](https://batocera.org/) adapted to handheld devices which are incompatible with the mainline Linux kernel or need other types of device-specific special attention.

If you are new to retro-gaming: Don't be scared! The initial setup might look a little intimidating at first, but you'll get the gist of it pretty fast, our wiki will guide you through it! Just head to the [Quick Start Guide](../play/quick-start) and follow it step by step and you'll have your KNULLI installation up and running in no time!

However, if you already have some experience with other CFWs, we'd like to give you a brief introduction, since KNULLI might do some things a little differently from other CFWs. So, if you want to make sure KNULLI is the right fit for you, check out the following sections:

* ["You've GOT to try KNULLI!"](#youve-got-to-try-knulli)
* [Built-in features](#built-in-features)
* [Set up your emulators via EmulationStation](#set-up-your-emulators-via-emulationstation)
* [Strict folder structure](#strict-folder-structure)
* [Default file system](#default-file-system)

## "You've GOT to try KNULLI!"

Our friend [TechDweeb](https://www.youtube.com/@TechDweeb) made a very comprehensive video guide to get you started with KNULLI. (Thanks, TechDweeb!) If you want to get to know KNULLI, learn about its features, and see it in action, this video might just be what you are looking for.

<iframe width="560" height="315" src="https://www.youtube.com/embed/GJQnhkNd9kU?si=bSP_jlUffjkhP4H1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

## Built-in features

KNULLI comes with a lot of built-in features:

* KNULLI comes with a ton of different emulators and ports (including PortMaster) and supports the addition of [native Pico-8](../systems/pico-8).
* You can [scrape](../play/scraping) the metadata and media (screenshots, boxarts, videos, descriptions, etc.) directly from ScreenScraper, TheGamesDB and ArcadeDB.
* You can collect and review your [RetroAchievements](../play/retro-achievements).
* You can connect [Bluetooth](../configure/bluetooth) controllers and headphones if your handheld supports Bluetooth.
* KNULLI supports using the HDMI output of your device (if it has one) to play your games on the big screen.
* KNULLI allows to [add files wirelessly](../play/add-games/network-transfer) by making your userdata available via SMB (the default built-in Windows file sharing protocol).
* KNULLI comes with a set of default [bezel decorations](../configure/customization/bezel-decorations) that you can simply switch on.
* You can switch between a lot of different [themes](../configure/customization/themes).
* You can organize your games in [dynamic collections](../configure/collections) which group your games automatically by certain keywords or attributes.
* You can create [custom collections](../configure/collections) of hand-picked games, too!
* KNULLI comes with syncthing to synchronize your savegames and states among different KNULLI/Batocera devices.
* If your device comes with [RGB LEDs](../configure/rgb-leds), KNULLI enables you to set them up and even use them as battery indicators.
* Expert users can access KNULLI via [SSH](../configure/SSH).
* KNULLI allows to either go on standby or shutdown gracefully when [closing the lid](../configure/power-management) of a clamshell device.

## Set up your emulators via EmulationStation

The frontend of KNULLI is called EmulationStation. It is a very comprehensive GUI that comes with a lot of different themes. One of the core features of KNULLI is that you will be able to set up your emulators directly in EmulationStation either **per system** or **per game**.

Other CFWs expect you to set up the emulators via each emulator's own GUI (which is **RetroArch** in most cases). However, KNULLI encourages you **not** to rely on the RetroArch GUI **at all**. KNULLI will **generate** the emulator configuration for each game individually on launch, based on the settings you set up in EmulationStation.

Expert users will still be able to access the RetroArch GUI while running a game. [**Overrides**](../configure/retroarch/shaders) and [**remap**](../configure/retroarch/controls) files can be used either **per game** or **per system** to make manual adjustments directly in the RetroArch GUI. However, one of the core features of KNULLI is to aggregate emulation settings into EmulationStation to make messing around with individual emulator GUIs obsolete.

## Strict folder structure

KNULLI comes with a lot of built-in features you won't find in many other CFWs. However, to make all these features work, KNULLI relies on a very **strict folder structure**. Games, BIOS files, saves, themes, etc., need to be in the exact place KNULLI needs them to be. If you want to migrate your existing library to KNULLI, you need to adapt said library to the KNULLI folder structure - there is no way around. You should be aware that KNULLI is **case sensitive**.

## Default file system

Unlike many other CFWs, KNULLI defaults to the **ext4** file system. **ext4** has a lot of advantages, it is more sturdy and reliable than the **exFAT** file system, however, it has one big drawback: **ext4** cannot be accessed from Windows/MacOS. Thankfully, KNULLI provides other means to [add games](../play/add-games) either by network access or via ADB. Don't worry though: It is easily possible to simply [format your storage](../play/add-games/formatting) to exFAT instead if you prefer. However, you should be aware about the [PortMaster/exFAT situation](../guides/portmaster-and-exfat) before doing so.
