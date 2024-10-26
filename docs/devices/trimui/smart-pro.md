---
search:
  exclude: true
---
# TrimUI Smart Pro

## Overview

| Device | CPU / Architecture | Kernel | GL driver | Interface |
| -- | -- | -- | -- | -- |
| Trimui Smart Pro | Allwinner A133 / PowerVR GE8300 | Allwinner BSP | pvrsrvkm | Emulation Station |


## Installation

Our [Quick Start Guide](../../../play/quick-start/) will guide you through the process of installing and setting up KNULLI on the TrimUI Smart Pro.

## Extracting the kernel and bootloader

!!! warning "The TrimUI Smart Pro distribution includes a bootloader, u-boot, and kernel in binary form extracted from the stock firmware. There are no public sources provided by TrimUI for those"

TrimUI has not published the source code of the u-boot and kernel of the TrimUI Smart Pro. They have published some libraries and SDK, but those do not include the BSP that includes the kernel, u-boot, and bootloader. In order to have a working configuration you have two options:

* You can use the stock kernel, bootloader, and u-boot from the stock SDCARD. See below for instructions on how to extract those. 
* You can compile the included kernel with the source code of this distribution, however, note that there will be a few elements that are missing

The firmwmare included in releases uses the kernel, bootloader, and u-boot from the stock firmware.

You can read [this page](../../guides/A133-firmware-extract.md) to learn how to extract the bootloader, u-boot, and kernel from the stock firmware.
