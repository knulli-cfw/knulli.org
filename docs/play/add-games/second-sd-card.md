# :material-micro-sd: Using a Second SD Card

!!! danger "Important:  Read this before you proceed!"

    If you want to use a second SD card, we **strongly** recommend to format it to **ext4** and use [**Network Transfer**](../network-transfer) to access it. Before you attempt set up a exFAT-formatted second SD card, please make sure to read the warning in the [Add Games](..) section.
    
    Furthermore, please understand that it is **not possible** to use SD 1 and SD 2 as game storage **at the same time**. You can use **either** SD 1 **or** SD 2 - but not both at the same time! If you want to learn more about this, please have a look at the [Game Storage section](../game-storage).

!!! info "Migrating to a dual SD card setup"

    This section is meant for users who are working on their inital KNULLI setup. If you already started setting up KNULLI on a single SD card, you might want to take a look at our [Dual SD Card Migration Guide](../../../guides/dual-sd-card-migration) instead.

If you use KNULLI on a device which has a second SD card slot, you may use the second slot for a secondary SD card, which can be used **instead** of the *SHARE* partition of the primary SD card.

* Shut down your KNULLI device (if it is currently turned on).
* Insert the second SD card into the second SD card slot while the device is turned off.
* Boot KNULLI, open the main menu by pressing the ++"Start"++ button and choose *System settings*.
* Find the *Storage* section where you can choose your *Storage device*.
    * Switch fom *Internal* (the "internal" storage is the *SHARE* partition of your KNULLI SD card) to the name of your second SD card, e.g., *SHARE - 25.6G*.
* Reboot KNULLI to apply the changes by pressing the ++"Start"++ button and choosing *Restart system* in the *Quit* section.
* If your secondary SD card is **not yet** formatted to the file system of your choice
    * follow instructions in the [Formatting](../formatting) section to format your SD card with the **built-in KNULLI formatter**.
    * make sure to reboot once more to apply the formatting.
* During reboot, KNULLI will automatically populate the second SD card with all the required folders and files you would usually find in the [userdata folder](../game-storage)/*SHARE* partition.
* If your second SD card is formatted to exFAT, you can now shut down your device and take the card out. You can put the card in your computer to access it and populate it with your data.

!!! warning "The `batocera` folder"

    Older alpha versions of KNULLI created a subfolder `batocera` on your secondary SD card and made the [userdata folder](../game-storage) point to that `batocera` folder. However, more recent versions got rid of the `batocera` folder entirely. To maintain compatibility with current KNULLI releases, simply move the entire contents of the `batocera` folder to the top level of your second SD card."
