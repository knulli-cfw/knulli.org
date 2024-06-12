# :material-layers-plus: Using a Second SD Card

!!! warning "Please be aware that you may not be able to run certain games from the [PortMaster](../../systems/portmaster) library if your secondary SD card is formatted to exFAT. Some ports rely on symlinks and large swap files which are not supported by the exFAT file system."

If you use KNULLI on a device which has a second SD card slot, you may use the second slot for a secondary SD card, which can be used instead of the *SHARE* partition:

* Make sure that the second SD card is formatted to ext4 or exFAT. (You don't have to reformat it if it already is formatted to ext4 or exFAT.)
* Insert the second SD card into the second SD card slot while the device is turned off.
* Boot KNULLI, open the main menu by pressing the ++"Start"++ button and choose *System settings*.
* Find the *Storage* section where you can choose your *Storage device*.
    * Switch fom *Internal* (the "internal" storage is the *SHARE* partition of your KNULLI SD card) to the name of your second SD card, e.g., *SHARE - 25.6G*.
* Reboot KNULLI to apply the changes by pressing the ++"Start"++ button and choosing *Restart system* in the *Quit* section.
* During reboot, KNULLI will automatically populate the second SD card with all the folders and files you would usually find in the [userdata folder](../userdata-folder)/*SHARE* partition.
* If your second SD card is formatted to exFAT, you can now take the card out of the device when it is shut off. You can put the card in your computer to access it and populate it with your data.

!!! info "Older alpha versions of KNULLI created a subfolder `batocera` on your SD card and made the [userdata folder](../userdata-folder) point to that `batocera` folder. However, more recent versions got rid of the `batocera` folder entirely. To maintain compatibility with current KNULLI releases, simply move the entire contents of the `batocera` folder to the top level of your second SD card."
