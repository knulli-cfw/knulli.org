# :material-layers-plus: Adding Games to KNULLI

KNULLI has a few options for adding games. Depending on the capabilites of your device, you will have to determine which option to choose. For example, some devices do not have networking capabilites, so with those devices you will not be able to use the network transfer options. Additionally, you might have to consider the computer you will use as a data source, since some options are restricted to specific operating systems.

!!! danger "Important: Read this before you start!"

    Unlike many other CFWs, KNULLI currently uses **ext4** as the default file system for your games, saves, configs, etc. We made this decision **purposely**, to give you the best out-of-the-box experience with **PortMaster**. Currently, PortMaster does **not** work properly with KNULLI on Windows/macOS-compatible exFAT partitions. (You can read more about this topic in the [PortMaster](../../../systems/portmaster) section.)

    It is possible to access the ext4-formatted partitions/SD cards with **Linux** systems. However, ext4 is **not accessible** from **Windows/macOS** directly. Consequently, you will not be able to access your SD card in the same way you might be used to from other CFWs. To add your files, we suggest that you use **network transfer** instead. Once you have added the device to your Wi-Fi (as explained in the [Networking](../../../configure/networking) chapter), your KNULLI device will show up in the **Network** section of your **Windows Explorer**, where you can drag-and-drop your files just as easily. (You will find a more detailed walkthrough in the [Network Transfer](network-transfer) section.)
    
    We know, that network transfer is a bit slower, which is an inconvenience during the initial setup when you are uploading the major part of your games. However, we also believe that it is **worth the effort**. The PortMaster library contains about **500 games**, a lot of them will be **fully playable** on your handheld device if you stick with ext4.

    There is an **opt-out** though. If you do not want to play PortMaster games anyway, you can **easily reformat** to the Windows-compatible **exFAT** format. (You will find instructions in the [Formatting](formatting) section.) Just be aware that PortMaster will **not** work properly if you choose to format to exFAT!
