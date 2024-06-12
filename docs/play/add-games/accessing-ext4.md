# :material-micro-sd: Accessing the SD Card

Under certain circumstances, games can be added directly to your SD card.

### Devices with a single SD card

As explained above, the *SHARE* partition is formatted to ext4 by default. Therefore, it is not accessible on Windows. However, if neither network transfer nor a Linux computer is available to you, there are options to access the SD card from Windows anyway.

#### Reformat the share partition to exFAT

!!! warning "Before reformatting the SD card to exFAT, please be aware that you may not be able to run certain games from the [PortMaster](../../systems/portmaster) library afterwards. Some ports rely on symlinks and large swap files which are not supported by the exFAT file system."

It is possible to reformat the *SHARE* partition to exFAT, to make the partition accessible on Windows. To format the partition to exFAT anyway, open the KNULLI main menu by pressing ++"Start"++ and choose *Format a disk* in the *Frontent developer options* section of the *System settings*. You will be able to choose whether you want your partition formatted to ext4 or exFAT.

#### Third party software

Some third-party developers offer software solutions to access Linux file systems from Windows/MacOS:

* Paragon EXTFS for Windows/Mac is a tool which is not free but it's highly recommended since it allows seamless access to ext2/3/4.
* DiskGenius on Windows is an tool which we cannot recommend since it performs badly and tends to corrupt the partition and its content.

!!! danger "We generally do **not** recommend using third party software to access Linux file systems. If you know what you are doing, you may try this approach anyway. However, you should be aware that you risk data loss."

### Devices with a second SD card

If you have slot for a second SD card available, you can simply format a second SD card to exFAT on your computer and set it up as explained in the section [Using a second SD card](../second-sd-card).

## Option 3: Linux

If you have access to a Linux computer, you will be able to access the *SHARE* partition anyway, even if it is formatted to ext4. Simply plug your card into your Linux computer and you will be able to browse the directories and add files directly.
