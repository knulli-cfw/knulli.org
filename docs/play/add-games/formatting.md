# :material-folder-cog: Formatting

!!! danger "Important:  Read this before you proceed!"

    We **strongly** suggest to use [**Network Transfer**](../network-transfer) to access to your KNULLI device and stick with the **ext4** file system. Before you attempt to format any of your SD cards, please make sure to read the warning in the [Add Games](..) section.

## Before you format

* Be aware that formatting implies that **all data** on the formatted storage will be **permanently deleted**.
* Make sure to choose the **correct disk** for formatting, especially if you have a **2-SD-card setup**!
* **Avoid** formatting directly from your Windows/macOS/Linux computer and use the **built-in KNULLI formatter instead**!

## Available file systems

The built-in KNULLI formatter offers **three** different filesystems. However, only **two** of them are currently supported by KNULLI:

* **exFAT** is a Windows/macOS-compatible file system which is used by most CFWs, Smartphones, etc. However, exFAT is **incapable** of handling **large swap files** and **symbolic links**. Therefore, many PortMaster games **cannot be played** on exFAT-formatted storages.
* **ext4** is a Linux file system which **cannot be accessed** directly from Windows/macOS. However, ext4 supports **large swap files** and **symbolic links**. Therefore, PortMaster games **run perfectly** on ext4-formatted storages.
* **BTRFS** is a file system which is currently **NOT SUPPORTED BY KNULLI**.

## Formatting

The built-in KNULLI formatter can be used to format both, the internal data storage on your primary SD card (**internal**) and the optional second SD card (**external**).

To format your data storages to the file systems of your choice, open the KNULLI main menu by pressing ++"Start"++ and choose *Format a disk* in the *Frontent developer options* section of the *System settings*. Make sure to choose the correct *Device to Format* and the *File System* you want to format the device to. Be aware that you need to reboot your device to apply the formatting after you chose **Format now*.
