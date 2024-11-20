# :material-micro-sd: Accessing the SD Card

!!! danger "Important: Read this before you proceed!"

    We **strongly** suggest to use [**Network Transfer**](../network-transfer) to access to your KNULLI device. Before you attempt to access your SD card directly, please make sure to read the warning in the [Add Games](..) section.

As explained above, the *SHARE* partition is formatted to ext4 by default. Therefore, it is not accessible on Windows. However, if network transfer is not available to you, there are other options to access the SD card directly.

## Option 1: Linux

If you have access to a Linux computer, you will be able to access the *SHARE* partition anyway, even if it is formatted to ext4. Simply plug your card into your Linux computer and you will be able to browse the directories and add files directly.

## Option 2: Third Party Software

Some third-party developers offer software solutions to access Linux file systems from Windows/MacOS:

* Paragon EXTFS for Windows/Mac is a tool which is not free but it's highly recommended since it allows seamless access to ext2/3/4.
* DiskGenius on Windows is an tool which we cannot recommend since it performs badly and tends to corrupt the partition and its content.

!!! danger "We generally do **not** recommend using third party software to access Linux file systems. If you know what you are doing, you may try this approach anyway. However, you should be aware that you risk data loss."

## Option 3: Reformat to exFAT

!!! danger "Important: Read this before you proceed!"

    Be aware, that **many** PortMaster games will **not** work properly from an exFAT-formatted drive. Read the warning in the [Add Games](..) section for a detailed explanation.

It is possible to (re)format your file storages to exFAT, to make them accessible on your Windows/macOS computer. Please avoid formatting your storages directly from Windows/macOS. Instead, follow the instructions in the [Formatting](../formatting) to format with the built-in KNULLI formatter.
