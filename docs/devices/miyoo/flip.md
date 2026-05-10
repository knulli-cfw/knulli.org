# Miyoo Flip

## Overview

| Device | CPU / Architecture | Kernel | GL driver | Interface |
| -- | -- | -- | -- | -- |
| Miyoo Flip | Rockchip RK3566 | --- | --- | Emulation Station |

## Installation

Unlike most other devices, the Miyoo Flip needs a few steps of preparation before you can run KNULLI on it.

By default, the Miyoo Flip is not capable of booting an OS from the SD card slot. The Miyoo stock OS is installed directly on the device, so by default both SD card slots are only used for ROMs etc.

The following instruction will guide you through the process of patching the original firmware so that it allows to optionally boot from SD cards, too. (Don't worry: The stock OS will remain unharmed and still work like before!)

### Preparing the device

!!! danger "Please be thorough"

    First of all: Don't worry. You can't permanently "brick" your device if anything goes wrong.

    However: **If** something goes wrong, the steps of getting the device back to work require to open the device shell and press a tiny button on the mainboard. It's not **that** difficult, but it's something you might want to avoid, hence, follow the steps below **precisely**.

    If your device **doesn't boot anymore at all** after attempting to install **GammaLoader**, you might need to **un-brick it** by following [this guide right here](https://github.com/spruceUI/spruceOS/wiki/16.-Miyoo-Flip-Unbricking).

* Find a SD card of decent quality (SanDisk, Lexar, etc.), avoid cheap SD cards (unbranded, Amazon Basics, etc.).
* Format the SD card to **FAT32**. (Plug the SD card in your Windows computer. When it shows in *This PC*, right-click the SD card and pick *Format*. Follow on-screen instructions.)
* Retrieve **GammaLoader for Miyoo Flip** (`GammaLoaderMiyooFlip.zip`) from [Gamma's GitHub repository](https://github.com/TheGammaSqueeze/GammaOSCore/releases/tag/beta2.5_miyooflip).
* Extract the contents of the `GammaLoaderMiyooFlip.zip` (e.g. with [7-Zip](https://7-zip.org/)) directly to the root of the SD card you just prepared.
* Make sure your Miyoo Flip is **shut down**.
* Plug the SD card into the slot on the **left side** of the device.
* Boot the device, go to *Apps*, then open the *Gamma Bootloader Installer*.
* **DO NOT INTERRUPT THE INSTALLATION PROCESS!** The device might **reboot a couple of times** and will return to the Miyoo stock OS when it is finally done.
* Once the installation is done, you should be able to shut the device down and remove the SD card.
* When turning the device back on, it should boot into the Miyoo stock OS as if nothing has happened.

Congratulations: Your device is now ready to run KNULLI!

!!! info "The primary SD card slot is on the right side!"

    After preparing the device to be bootable from SD card, please be aware that the primary SD card (your KNULLI SD card) needs to go in the slot on the **right side** of the device!

### Install KNULLI

Our [Quick Start Guide](../../play/quick-start.md) will guide you through the process of installing and setting up KNULLI on the Miyoo Mini.
