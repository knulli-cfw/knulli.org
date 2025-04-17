# :material-micro-sd: Accessing the SD Card

Depending on the formatting of your *SHARE* partition (or your second SD card), your options for direct access to the SD card are very different. This section will give you an overview about the possible options.

If you are unhappy with your current formatting, you can always use the built-in KNULLI formatter to change the formatting of your data storage. Please be aware that **all contents of your data storage are lost** if you decide to format. You canl earn more about formatting in the [Formatting section](../formatting).

## Accessing an exFAT-formatted SD Card

exFAT is the default file system for SD cards and thumb drives. Windows, MacOS, and Linux support exFAT out of the box. Simply plug the SD card into the SD card reader of your computer (or use an external SD card reader) and access it like you would do with any other SD card or thumb drive.

## Accessing an ext4-formatted SD Card

ext4 is a file system for Linux machines. Unfortunately, Windows and MacOS do not understand it, so you will not be able to access your SD card from a Windows/MacOS computer without third party software.

### Option 1: Linux

If you have access to a Linux computer, you will be able to access the *SHARE* partition anyway, even if it is formatted to ext4. Simply plug your card into your Linux computer and you will be able to browse the directories and add files directly.

!!! warning "Potential issue with direct access from Linux"

    Some users reported issues with their SD cards after accessing them from Linux. We suggest to avoid access from Linux for now and try [**Network Transfer**](../network-transfer) instead if possible.

### Option 2: Third Party Software

Some third-party developers offer software solutions to access Linux file systems from Windows/MacOS:

* Paragon EXTFS for Windows/Mac is a tool which is not free but it's highly recommended since it allows seamless access to ext2/3/4.
* DiskGenius on Windows is an tool which we cannot recommend since it performs badly and tends to corrupt the partition and its content.

!!! warning "Data loss"

    We generally do **not** recommend using third party software to access Linux file systems. If you know what you are doing, you may try this approach anyway. However, you should be aware that you risk data loss."
