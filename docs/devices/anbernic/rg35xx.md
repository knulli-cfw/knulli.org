# Anbernic RG35XX (Original)

## Overview

| Device | CPU / Architecture | Kernel | GL driver | Interface |
| -- | -- | -- | -- | -- |
| RG35xx Original | Actions Semi 7039 (ARM) | Actions Semi BSP 4.9.170 | pvrsrvkm | Emulation Station / Simplemenu |


## Features

* Suspend (briefly press power button)
* HDMI
* Emulation Station frontend
* Wireless support with compatible USB-Wifi dongles

## Extracting the kernel and bootloader


!!! warning "The RG35XX distribution includes a bootloader, u-boot, and kernel in binary form extracted from the stock firmware. There are no public sources provided by anbernic for those"

Anbernic has not published the source code of the u-boot and kernel of the RG35xx (original). In order to have a working configuration you have two options:

* You can use the stock kernel, bootloader, and u-boot from the stock SDCARD. See below for instructions on how to extract those. 
* You can compile the included kernel with the source code of this distribution, however, note that there will be a few elements that are missing

The firwmare included in releases uses the kernel, bootloader, and u-boot from the stock firmware.

## Notes

!!! warning "The RG35XX is currently not supported by KNULLI."
