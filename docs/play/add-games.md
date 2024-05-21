# :material-layers-plus: Adding Games to KNULLI

KNULLI has a few options for adding games. Depending on the capabilites of your device, you will have to determine which option to choose. For example, some devices do not have networking capabilites, so with those devices you will not be able to use the network transfer options. Additionally, you might have to consider the computer you will use as a data source, since some options are restricted to specific operating systems.

## Data storage structure

When you install KNULLI on a SD card, several partitions will be created, which will be shown to you as different drives on your computer. Most of these drives can only be accessed from a Linux operating system. They are not accessible on Windows.

!!! danger "You should never format the KNULLI partitions which Windows cannot read, no matter how strongly Windows suggests that."

The *BATOCERA* drive will be the only drive which was formatted to FAT32, to make it accessible on Windows. However, this is just the place where the operating system itself is stored, so it is not a place to store your games. You still might need access to the *BATOCERA* partition if you want to update KNULLI manually as described in the [update](../update) section.

### The share partition

The biggest partition on your SD card is the *SHARE* partition. By default, KNULLI formats the *SHARE* partition to ext4. Therefore, the drive is not accessible on Windows computers. The *SHARE* partition is the drive where your user data is stored - all your games, saved states, screenshots, configurations, etc. Within KNULLI, the *SHARE* partition is mounted as `/userdata`.

### The userdata folder

Inside the `/userdata` folder, you will find subfolders, where you can store your games and other files. The most important folders for you to know are the following:

* `/userdata`
    * `/roms` is the folder, where you can store your games. Inside the folder you will find subfolders for all supported systems. Simply place your game files into the folders of the system the game was made for.
    * `/bios` is the folder where you can store your BIOSes.
    * `/music` is the folder where you can store MP3 and OGG files to have them play as background music on EmulationStation. (The songs should have a sample rate of 44100Hz and a bitrate of 256kb/s max.)
    * `/saves` is the folder where your savegames will be stored.
    * `/screenshots` is the folder where your screenshots will be stored.
    * `/system` is the folder where your settings will be stored. You should not change anything in here, unless you are absolutely sure that you know what you are doing. However, it can't hurt to include this folder in your backups.

!!! info "KNULLI only scans for games in the `roms` folder. Games which are stored outside of the folder will not be recognized as such."

!!! info "For details about the files which are required/supported for each system, have a look into the [Systems](/../systems) section of the wiki."

### Using a second SD card

If you use KNULLI on a device which has a second SD card slot, you may use the second slot for a secondary SD card, which can be used instead of the *SHARE* partition:

* Make sure that the second SD card is formatted to ext4 or exFAT. (You don't have to reformat it if it already is formatted to ext4 or exFAT.)
* Insert the second SD card into the second SD card slot while the device is turned off.
* Boot KNULLI, open the main menu by pressing the ++"Start"++ button and choose *System settings*.
* Find the *Storage* section where you can choose your *Storage device*.
    * Switch fom *Internal* (the "internal" storage is the *SHARE* partition of your KNULLI SD card) to the name of your second SD card, e.g., *SHARE - 25.6G*.
* Reboot KNULLI to apply the changes by pressing the ++"Start"++ button and choosing *Restart system* in the *Quit* section.
* During reboot, KNULLI will populate the second SD card with a folder named `/batocera` and all the required subfolders you usually find on the *SHARE* partition.
* If your second SD card is formatted to exFAT, you can now take the card out of the device when it is shut off. You can put the card in your computer to access it and populate it with your data.

## Option 1: Network transfer

Network transfer can be used on any device which can be connected to the internet or a local network. (This includes devices with native networking capabilites and ones where networking can be added through an external dongle.)

This option first requires you to set up networking on your device.  Please see [Networking](../../configure/networking) for details. Once you have completed those steps, you will need

* the hostname and/or IP address of your device.
* the root password, if additional security measurements are in place, as explained in the [Networking](../../configure/networking) section.

### Windows networks (SMB)

Like many other operating systems, KNULLI supports SMB, the Windows network protocol. Depending on the type of computer you have, there are different options to transfer your games and other data via SMB:

- Windows:
    - Open a Windows Explorer window and type either `\\[HOSTNAME]` or `\\[IP-ADDRESS]` into the address bar (replace `[HOSTNAME]` with the hostname or `[IP-ADDRESS]` with the IP address of your device).
    - If additional security measurements are in place, you will be prompted for your credentials.
        - The expected username is `root`, the password is the *Root password* shown in the *Security* section of the *System settings*.
- MacOS:
    - Open finder, select *Go* and then *Connect to Server* from the top menu.
    - In the address bar that appears, type either `smb://[HOSTNAME]` or `smb://[IP-ADDRESS]` into the address bar (replace `[HOSTNAME]` with the hostname or `[IP-ADDRESS]` with the IP address of your device).
    - If additional security measurements are in place, you will be prompted for your credentials.
        - The expected username is `root`, the password is the *Root password* shown in the *Security* section of the *System settings*.

After you successfully logged in, you will be able to access the `share` partition as a network drive. The network drive corresponds to your `/userdata` folder, so you can put all your data (games, etc.) in the respective folders.

### FTP

Using your FTP program of choice; set up an SFTP connection to the IP address to your KNULLI device. You will need hte hostname or the IP address of the device. Make sure the port is set to `22`. The expected username is `root` and the expected password is the *Root password* you will find in the *Security* section of the *System settings*.

### HTTP

!!! warning "This section is still under construction. Sorry, we're working on it! :smile: Until it's done, you might want to join us on [:simple-discord: Discord](https://discord.gg/HXPS3DAeeB) to get in touch - maybe we can help you there!"

### After transferring your data

Once your data is completely transferred, make sure to update your gamelists to make the data available. You can do so by pressing ++"Start"++ to open the main menu, then open *Game settings* and select *Update gamelists*. KNULLI will rescan all game folders and identify all the games you added to make them available in EmulationStation.

## Option 2: SD card

Under certain circumstances, games can be added directly to your SD card.

### Devices with a single SD card

As explained in the [Data storage structure](#data-storage-structure) section, the *SHARE* partition is formatted to ext4 by default. Therefore, it is not accessible on Windows. However, if neither network transfer nor a Linux computer is available to you, there are options to access the SD card from Windows anyway.

#### Reformat the share partition to exFAT

It is possible to reformat the *SHARE* partition to exFAT, to make the partition accessible on Windows. Be aware that exFAT has some disadvantages regarding performance and is limited in the max size of its files. Consequently, some games, especially certain ports, will not run on a *SHARE* partition which is formatted to exFAT.

To format the partition to exFAT anyway, open the KNULLI main menu by pressing ++"Start"++ and choose *Format a disk* in the *Frontent developer options* section of the *System settings*. You will be able to choose whether you want your partition formatted to ext4 or exFAT.

#### Third party software

Some third-party developers offer software solutions to access Linux file systems from Windows/MacOS:

* Paragon EXTFS for Windows/Mac is a tool which is not free but it's highly recommended since it allows seamless access to ext2/3/4.
* DiskGenius on Windows is an tool which we cannot recommend since it performs badly and tends to corrupt the partition and its content.

!!! danger "We generally do **not** recommend using third party software to access Linux file systems. If you know what you are doing, you may try this approach anyway. However, you should be aware that you risk data loss."

### Devices with a second SD card

If you have slot for a second SD card available, you can simply format a second SD card to exFAT on your computer and set it up as explained in the section [Using a second SD card](#using-a-second-sd-card).

## Option 3: Linux

If you have access to a Linux computer, you will be able to access the *SHARE* partition anyway, even if it is formatted to ext4. Simply plug your card into your Linux computer and you will be able to browse the directories and add files directly.
