# :material-progress-check: Installing KNULLI

KNULLI is installed by downloading an image for your device, flashing it to an SD Card (or your device's internal storage) and then booting the device to start the install process.

## Step 1: Download [![Latest](https://img.shields.io/github/release/knulli-cfw/distribution.svg?labelColor=111111&color=5998FF&label=Latest&style=flat#only-light)](https://github.com/knulli-cfw/distribution/releases/latest)[![Latest](https://img.shields.io/github/release/knulli-cfw/distribution.svg?labelColor=dddddd&color=5998FF&label=Latest&style=flat#only-dark)](https://github.com/knulli-cfw/distribution/releases/latest)

* Download the latest version of KNULLI for your device from the [releases page](https://github.com/knulli-cfw/distribution/releases/latest).
    * You'll find download links for each device/platform we support under the "`Installation Package Downloads`" header.
    * Make sure to download the correct image for your device.  For example; if you are installing KNULLI on a [RG35XX](../devices/anbernic/rg35xx.md) you would download the `rg35xx` image.
    * If you have any questions you can check the [Device Support](../devices/index.md) section to confirm which image you should download for your specific device.

!!! warning "If your device is *not* listed among the `Installation Package Downloads`, there is no public release of Knulli for your device, yet. You should *not* attempt to use a package for a different device."

## Step 2: Flash

* First decompress the image.
* Then write the image to an SD Card using an imaging tool.
    * Common imaging tools include [Rufus](https://rufus.ie/), [Balena](https://balena.io), [Raspberry Pi Imager](https://www.raspberrypi.com/software/), and [Win32 Disk Imager](https://sourceforge.net/projects/win32diskimager/).  If you're skilled with the command line, `dd` can also be used.

During the imaging, several partitions will be created, which will be shown to you as different drives on your computer. Most of these drives can only be accessed from a Linux operating system. They are not accessible on Windows.

!!! danger "You should never format the KNULLI partitions which Windows cannot read, no matter how strongly Windows suggests that."

After successful flashing, the *BATOCERA* drive will be the only drive formatted to FAT32, to make it accessible on Windows for manual updates as described in the [update](../update) section. However, this is just the place where the operating system itself is stored, so it is not a place to store your games. For more information on how to add games, please refer to the [Add Games](../add-games) section *after first boot*.

!!! warning "Expanding the SHARE partition"

    During flashing, a partition called *SHARE* will be created. This is where all your games and other data will be stored. However, the *SHARE* partition will only be expanded to its full size during first boot. It is *mandatory* to finish installation by booting KNULLI *before* you can access the *SHARE* partition and start adding your games. Please have a look at the [Add Games](../add-games) section to learn how to add games to your KNULLI device - *after first boot*."

## Step 3: Boot your device

* Insert your SD Card into your device while it is turned off.
    * If your device has a secondary SD card slot, please make sure it is empty during first boot.
* Turn on your device.
    * Note: Some devices may require you to set the boot order so your SD Card is loaded first.  Please see documentation for your specific device to see if this applies to you.
* KNULLI will run through its install process and then reboot your device after its complete.
* When your device reboots it will load directly into EmulationStation; at this point you are good to go!

## Next Steps

* [Set up Networking](../../configure/networking)
* [Set up Controls](../../configure/controls)
* [Add Games](../../play/add-games)
* [Scraping](../../play/scraping)
* [Themes](../../configure/themes)
