# Anbernic RG35XX H

![](../../_inc/images/knulli-booting-up.png)

## Overview

| Device | CPU / Architecture | Kernel | GL driver | Interface |
| -- | -- | -- | -- | -- |
| RG35XX H | Allwinner H700 (ARM) | Allwinner BSP 4.9.170 | Mali G31 | EmulationStation |

!!! warning "The RG35XX H distribution includes a bootloader, u-boot, and kernel in binary form extracted from the stock firmware. There are no public sources provided by anbernic for those"

## Extracting the kernel and bootloader

Anbernic has not published the source code of the u-boot and kernel of the RG35xx Plus. In order to have a working configuration you have two options:

* You can use the stock kernel, bootloader, and u-boot from the stock SDCARD. See below for instructions on how to extract those. 
* You can compile the included kernel with the source code of this distribution, however, note that there will be a few elements that are missing

The firwmare included in releases uses the kernel, bootloader, and u-boot from the stock firmware.

You can read [this page](../../guides/h700-firmware-extract.md) to learn how to extract the bootloader, u-boot, and kernel from the stock firmware.

## Features

* Wireless
* Bluetooth
* Suspend (briefly press power button)
* HDMI
* Dual frontend: choose between Emulation Station or Simplemenu
* Wireless support with compatible USB-Wifi dongles

## Notes

### Installation

Download the latest `RG35XX` version of KNULLI from the button below and follow the instructions listed on the [Install](../../../play/install/) page.
