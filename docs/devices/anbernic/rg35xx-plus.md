# Anbernic RG35XX Plus

## Overview

| Device | CPU / Architecture | Kernel | GL driver | Interface |
| -- | -- | -- | -- | -- |
| RG35xx Plus | Allwinner H700 (ARM) | Allwinner BSP 4.9.170 | Mali G31 | Emulation Station |

!!! warning "The RG35XX Plus distribution includes a bootloader, u-boot, and kernel in binary form extracted from the stock firmware. There are no public sources provided by anbernic for those"

## Extracting the kernel and bootloader

Anbernic has not published the source code of the u-boot and kernel of the RG35XX Plus. In order to have a working configuration you have two options:

* You can use the stock kernel, bootloader, and u-boot from the stock SDCARD. See below for instructions on how to extract those. 
* You can compile the included kernel with the source code of this distribution, however, note that there will be a few elements that are missing

The firwmare included in releases uses the kernel, bootloader, and u-boot from the stock firmware.

You can read [this page](../../guides/h700-firmware-extract.md) to learn how to extract the bootloader, u-boot, and kernel from the stock firmware.

## Features

* Wireless
* Bluetooth
* Suspend (briefly press power button)
* HDMI
* Emulation Station frontend
* Wireless support with compatible USB-Wifi dongles

## Installation

Our [Quick Start Guide](../../../play/quick-start/) will guide you through the process of installing and setting up KNULLI on the RG35XX Plus.

### Video Guide

> Courtesy of [@TechDweeb](https://www.youtube.com/@TechDweeb)
<iframe width="560" height="315" src="https://www.youtube.com/embed/MVPUu2BWuqw?si=icEWARXRxd9oB1DC" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

## Community

### Videos

| <iframe width="560" height="315" src="https://www.youtube.com/embed/0Du0SmGCb-Y?si=VxvtjPDPbfjY5W4J" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe> | <iframe width="560" height="315" src="https://www.youtube.com/embed/yEr_Pjsb_iQ?si=iYW5lNNmyJzyWMnl" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe> |
| -- | -- |
