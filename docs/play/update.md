#  :material-update: Updating KNULLI

!!! info "OTA Updates"

    Batocera supports OTA (over-the-air) updates which can be executed directly from the EmulationStation GUI. Consequently, KNULLI also shows the OTA update menu. However, currently, we do **not have OTA servers** set up, yet. Until we do, we kindly ask you to update your KNULLI installation **manually**.

## Manual Update

KNULLI can be updated by downloading the **boot package** for your device and replacing the `batocera` file manually.

1. Download the latest **boot package** for your device from our [Releases page](https://github.com/knulli-cfw/distribution/releases/latest) by following these steps:
    * Scroll to the bottom of the latest release to find it's **Assets** list.
    * Identify the **boot package** for your respective device by making sure
        * it contains the device name (e.g., `rg35xx-h` for the Anbernic RG35XX-H).
        * it **ends** with `boot.gz`, `boot.xz`,`boot.tar.gz`, or `boot.tar.xz`.
        * it has a size of approx. 1.5-2.0 GB.
    * If you have any questions you can check the [Device Support](../devices/index.md) section to confirm which image you should download for your specific device.
2. Extract the data from the compressed file (e.g. with [7-Zip](https://7-zip.org/)).
    * Be aware that a package that ends in `tar.gz` or `tar.xz` contains a compressed file within a compressed file, so you might need to first take the `tar` file out of the `gz`/`xz` file before you can extract the contents of the `tar` file.
3. Insert your KNULLI SD card into the SD card reader of your computer.
4. Replace the file `boot/batocera` on the *BATOCERA* partition of your SD card with the file `boot/batocera.update` from the file you downloaded by following these steps:
    * **Delete** the existing `batocera` file **or rename** the current `batocera` file (e.g. to `batocera.bak`) if you want to keep it, e.g., to be able to downgrade to the previous KNULLI version again. (If you still have a backup of a previous KNULLI version, you might want to delete this now to make some room.)
    * **Copy** `batocera.update` you extracted from the **boot package** to the `boot` folder on the `batocera` drive of your SD card.
    * **Rename** `batocera.update` to `batocera`.
5. Reboot the device, and the update will begin automatically.

## Re-creating contents of the `system` folder

!!! danger "Re-creating the `system` folder"

     **Usually**, KNULLI updates will **NOT** require you to re-create your entire `system` folder. Re-creating the `system` folder corresponds to **resetting to factory defaults**. Consequently, it will force you to **re-configure a lot of settings manually** since they will be gone afterwards! Do **NOT** do this, unless you are absolutely sure it is required.

As you might already know, **all your settings** are stored in your `userdata/system` folder as explained in the [Game Storage](../add-games/game-storage) section. In some **VERY rare cases**, it might be required to adapt your settings to new KNULLI defaults by **replacing/updating some files** in that `system` folder after you installed an update. The easiest way to achieve that is by just **removing** either the respective files **or** the entire folder. During the next boot, KNULLI will replace all the missing files with new files which contain the default settings.

If you want or need to re-create a configuration file (or the entire `system` folder) with default settings, access your `userdata` folder the same way you always access it. We **strongly suggest** that you **rename** the `system` folder **or** the files you want to replace by adding a suffix like `.bak` (e.g., rename from `system` to `system.bak`)

Afterwards, reboot your KNULLI device. It will re-create the missing files and folders from KNULLI defaults. Now, you can either re-configure all your settings via the EmulationStation GUI or you can hand-pick configuration details by comparing your old settings (`.bak`) with the new ones.
