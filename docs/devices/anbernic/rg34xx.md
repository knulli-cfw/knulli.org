# Anbernic RG34XX

## Overview

| Device | CPU / Architecture | Kernel | GL driver | Interface |
| -- | -- | -- | -- | -- |
| RG34XX | Allwinner H700 (ARM) | Allwinner BSP 4.9.170 | Mali G31 | EmulationStation |

## Features

* Wireless
* Bluetooth
* Suspend (briefly press power button)
* HDMI
* Emulation Station frontend
* Wireless support with compatible USB-Wifi dongles

## Installation

Our [Quick Start Guide](../../play/quick-start.md) will guide you through the process of installing and setting up KNULLI on the RG34XX.

### Video Guide

> Courtesy of [@TechDweeb](https://www.youtube.com/@TechDweeb)
<iframe width="560" height="315" src="https://www.youtube.com/embed/MVPUu2BWuqw?si=icEWARXRxd9oB1DC" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

## Extracting the kernel and bootloader

!!! danger "This section is for developers"

    This section is for **developers** who want to compile their own KNULLI build from **source code**. If you simply want to **install** KNULLI on your device, you can safely ignore this section and simply follow the [Quick Start Guide](../../play/quick-start.md).
    
    The KNULLI distribution for the RG34XX **already includes** a bootloader, u-boot, and kernel in binary form extracted from the stock firmware. There is **no need** to extract any of those manually unless you need them to compile KNULLI **from scratch**.

Anbernic has not published the source code of the u-boot and kernel of the RG34XX. In order to have a working configuration you have two options:

* You can use the stock kernel, bootloader, and u-boot from the stock SDCARD. See below for instructions on how to extract those. 
* You can compile the included kernel with the source code of this distribution, however, note that there will be a few elements that are missing

The firwmare included in releases uses the kernel, bootloader, and u-boot from the stock firmware.

You can read [this page](../../guides/firmware-extraction/h700-firmware-extract.md) to learn how to extract the bootloader, u-boot, and kernel from the stock firmware.

## Community

### Videos

| <iframe width="560" height="315" src="https://www.youtube.com/embed/0Du0SmGCb-Y?si=VxvtjPDPbfjY5W4J" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe> | <iframe width="560" height="315" src="https://www.youtube.com/embed/ozuBkxXhK7g?si=YN9dH_ZOb7AOYvkb" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe> |
| -- | -- |
