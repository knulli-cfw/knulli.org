# :material-progress-check: Installing KNULLI

KNULLI is installed by downloading an image for your device, flashing it to an SD Card (or your device's internal storage) and then booting the device to start the install process.

## Step 1: Download [![Latest](https://img.shields.io/github/release/knulli-cfw/distribution.svg?labelColor=111111&color=5998FF&label=Latest&style=flat#only-light)](https://github.com/knulli-cfw/distribution/releases/latest)[![Latest](https://img.shields.io/github/release/knulli-cfw/distribution.svg?labelColor=dddddd&color=5998FF&label=Latest&style=flat#only-dark)](https://github.com/knulli-cfw/distribution/releases/latest)

* Download the latest version of KNULLI for your device from the [releases page](https://github.com/knulli-cfw/distribution/releases/latest).
    * You'll find download links for each device/platform we support under the "`Installation Package Downloads`" header.
    * Make sure to download the correct image for your device.  For example; if you are installing KNULLI on a [RG35XX](../devices/anbernic/rg35xx.md) you would download the `rg35xx` image.
    * If you have any questions you can check the [Device Support](../devices/index.md) section to confirm which image you should download for your specific device.

!!! warning "If your device is **not** listed among the `Installation Package Downloads`, there is no public release of Knulli for your device, yet. You should **not** attempt to use a package for a different device."

## Step 2: Flash

* First decompress the image.
* Then write the image to an SD Card using an imaging tool.
    * Common imaging tools include [Rufus](https://rufus.ie/), [Balena](https://balena.io), [Raspberry Pi Imager](https://www.raspberrypi.com/software/), and [Win32 Disk Imager](https://sourceforge.net/projects/win32diskimager/).  If you're skilled with the command line, `dd` can also be used.

## Step 3: Boot your device

* Insert your SD Card into your device while its off and then turn it on
* Note: Some devices may require you to set the boot order so your SD Card is loaded first.  Please see documentation for your specific device to see if this applies to you.
* KNULLI will run through its install process and then reboot your device after its complete.
* When your device reboots it will load directly into EmulationStation; at this point you are good to go!

---

## Additional Notes

* KNULLI operating system is stored on an Ext4 partition that can be read by LINUX but is not natively readable on Windows. Currently it is not possible to access the primary KNULLI Ext4 partition on Windows to add games.
* On devices that support a second sd card, the sd card can be formatted as Ext4, FAT32, or exFAT. KNULLI will automatically detect the second SD card on boot and make it available as game storage.
* On x86 devices KNULLI includes an installation tool.  The installation tool can be found in the tools menu, which is one of the systems listed within ES.

## Next Steps

* [Set up Networking](../../configure/networking)
* [Add Games](../../play/add-games)
* [Scraping](../../play/scraping)
* [Themes](../../configure/themes)
