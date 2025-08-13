#  :material-update: Updating KNULLI

If you want to update KNULLI, you usually have three options:

* Use the built-in OTA (over the air) feature to update your running KNULLI installation
* **Re-flash** KNULLI to get a clean installation of the new version
* Manually update KNULLI by replacing the **boot package**

Please be aware that only **minor updates** come with a **boot package**. If you want to install a **major update**, it usually contains so many **significant changes** that re-flashing KNULLI is mandatory.

## OTA Updates

!!! info "OTA requires a working internet connection"

    Devices without wi-fi capability will not be able to install OTA updates since they require KNULLI to retrieve the update from the internet!

Before you attempt to re-flash or update manually, you might want to verify whether the update you are looking for is available via OTA (over the air):

* Press ++"Start"++ to bring up the main menu
* Go to *Updates & Downloads*
* Make sure *Check For Updates* is *enabled* to receive info about new KNULLI versions right after boot
* Set *Update Type* to *Stable* (*Alpha* and *Development* are currently restricted to developers and alpha testers only!)
* Press *Start Update* to check for updates
* If an update is available, follow the instructions on screen
* Updates may take a moment - if you are low on battery, we strongly suggest to connect to a power source before beginning to update
* **DO NOT** interrupt the device while an update is running!

## Major Updates

Major KNULLI updates (e.g., the update from **20240721** to **Firefly**) require a full re-flash of the KNULLI CFW and a full reset of all your **settings**. Consequently, major KNULLI updates purposely do **not** come with a boot package. If you want to install a major KNULLI update, we strongly recommend to create a backup of your [userdata folder](../add-games/game-storage) before you re-flash. Furthermore, if you run a Dual-SD-Card setup, you **must** remove your `system` folder from your [userdata folder](../add-games/game-storage) so that KNULLI can create a new one with all the new default settings. Once the new KNULLI version is up and running, you will be able to restore the backup by putting all your files back.

If you need more help installing a major update, have a look at our [Major Updates Guide](../../guides/major-updates).

!!! danger "The system folder"

    After a major update, please **do not restore the `system` folder** from your previous installation. If you know what you are doing, you can cherry-pick certain settings (e.g., remap files). However, you should be aware that major updates sometimes have options added, removed, or renamed. Relying on your old settings is **extremely** likely to cause problems.

## Minor Updates

!!! info "OTA Updates"

    Batocera supports OTA (over-the-air) updates which can be executed directly from the EmulationStation GUI. Consequently, KNULLI also shows the OTA update menu. However, currently, we do **not have OTA servers** set up, yet. Until we do, we kindly ask you to update your KNULLI installation **manually**.

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

!!! danger "Re-creating default settings"

     **Usually**, minor KNULLI updates will **NOT** require you to re-create neither a single configuration file nor your entire `system` folder. However, in **VERY rare cases** it might be required to adapt your configuration to new KNULLI default settings. In those cases, the easiest way is to reset to factory settings, either by re-creating single files or sometimes the entire `system` folder. You can learn more about it in the [Reset to factory settings](../../configure/reset-to-factory-settings) section, however, do **NOT** do this, unless you are absolutely sure it is required!
