#  :material-update: Updating KNULLI

On devices which can be connected to the internet, KNULLI can be updated "over the air" (OTA). Alternatively, KNULLI can also be updated by downloading the respective update file and installing it manually.

## Option 1: OTA update

If your device has access to the internet, you can update KNULLI directly from EmulationStation.

1. In EmulationStation, open the main menu by pressing the ++"Start"++ button on your controller.
2. Select *Updates & downloads*.
3. Select *Start updates*.

!!! info "By toggling *Check for updates*, you can decide if you want to be informed about new updates. By selecting an *Update type*, you may choose to only install *Stable* releases or to try out beta versions by selecting (*Butterfy*)."

## Option 2: Manual update

If your device does not have access to the internet or OTA updates are not available for other reasons, you can still update your KNULLI installation manually.


1. Download the latest update (the file name ends with `boot.gz` or `boot.tar.gz`) for your device from the [Releases page](https://github.com/knulli-cfw/distribution/releases/latest).
    * You'll find download links for each device/platform we support under the `Update Package Downloads` header.
    * Make sure to download the correct image for your device.  For example; if you are installing KNULLI on a [RG35XX](../devices/anbernic/rg35xx.md) you would download the `rg35xx` image.
    * If you have any questions you can check the [Device Support](../devices/index.md) section to confirm which image you should download for your specific device.
2. Extract the data from the compressed file (e.g. with [7-Zip](https://7-zip.org/)).
3. Insert your KNULLI SD card into the SD card reader of your computer.
4. Replace the file `boot/batocera` on the *BATOCERA* partition of your SD card with the file `boot/batocera.update` from the file you downloaded.
5. Reboot the device, and the update will begin automatically.
