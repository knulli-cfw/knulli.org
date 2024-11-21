# :material-layers-plus: Adding Games to KNULLI

KNULLI has a few options for adding games. Depending on the capabilites of your device, you will have to determine which option to choose. For example, some devices do not have networking capabilites, so with those devices you will not be able to use the network transfer options. Additionally, you might have to consider the computer you will use as a data source, since some options are restricted to specific operating systems.

!!! danger "Important: Read this before you start!"

    Unlike many other CFWs, KNULLI currently uses **ext4** as the default file system for your games, saves, configs, etc. ext4 is a **Linux** file system which **cannot** be accessed from **Windows/MacOS**. Don't worry: You will still be able to add your games via [network transfer](../add-games/network-transfer). We made this decision **purposely** to create a workaround for an ongoing issue with **PortMaster** compatibility.

    Several PortMaster games are currently not working properly on KNULLI when running from **exFAT**-formatted SD cards. (**exFAT** is the default file system of SD cards and thumb drives.) However, the PortMaster team is aware of the situation and a fix is already on its way. We **strongly recommend** that you read the [PortMaster and exFAT section](../../guides/portmaster-and-exfat) **before you proceed** and make a decision on how to handle data storage on your KNULLI device.
