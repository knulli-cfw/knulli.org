---
search:
  exclude: true
---
# TrimUI Brick

## Overview

| Device | CPU / Architecture | Kernel | GL driver | Interface |
| -- | -- | -- | -- | -- |
| Trimui Brick | Allwinner A133 / PowerVR GE8300 | Allwinner BSP | pvrsrvkm | Emulation Station |


## Installation

Our [Quick Start Guide](../../../play/quick-start/) will guide you through the process of installing and setting up KNULLI on the TrimUI Brick.

## Extracting the kernel and bootloader

!!! danger "This section is for developers"

    This section is for **developers** who want to compile their own KNULLI build from **source code**. If you simply want to **install** KNULLI on your device, you can safely ignore this section and simply follow the [Quick Start Guide](../../../play/quick-start/).
    
    The KNULLI distribution for the TrimUI Brick **already includes** a bootloader, u-boot, and kernel in binary form extracted from the stock firmware. There is **no need** to extract any of those manually unless you need them to compile KNULLI **from scratch**.

TrimUI has not published the source code of the u-boot and kernel of the TrimUI Brick. They have published some libraries and SDK, but those do not include the BSP that includes the kernel, u-boot, and bootloader. In order to have a working configuration you have two options:

* You can use the stock kernel, bootloader, and u-boot from the stock SDCARD. See below for instructions on how to extract those. 
* You can compile the included kernel with the source code of this distribution, however, note that there will be a few elements that are missing

The firmwmare included in releases uses the kernel, bootloader, and u-boot from the stock firmware.

You can read [this page](../../guides/A133-firmware-extract.md) to learn how to extract the bootloader, u-boot, and kernel from the stock firmware.
