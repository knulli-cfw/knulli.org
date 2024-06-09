# :material-layers-plus: Adding Games to KNULLI

!!! info "Unlike many other CFWs, KNULLI formats the *SHARE* partition to ext4 by default. The ext4 filesystem is not readable by Windows, so by default, you will not be able to add games in the same way you might be used to from other CFWs. However, some games from the [PortMaster](../../systems/portmaster) library only work on ext4 filesystems because they rely on symbolic links and large swap files. It is possible to [reformat the partition to exFAT](#reformat-the-share-partition-to-exfat) *after first boot*, however, you should be aware that some PortMaster games might not work on your device if you choose to reformat to exFAT."

KNULLI has a few options for adding games. Depending on the capabilites of your device, you will have to determine which option to choose. For example, some devices do not have networking capabilites, so with those devices you will not be able to use the network transfer options. Additionally, you might have to consider the computer you will use as a data source, since some options are restricted to specific operating systems.

## Data storage on KNULLI devices

Before you start adding your games, please take the time to understand how data storage is structured on KNULLI. This might be helpful, *especially* when you already have experience with other CFWs and want to migrate your data.

### The `/userdata` folder

KNULLI supports single and dual SD card setups. Internally, KNULLI has a folder called `/userdata` where all your data (games, screenshots, bezels, saves, configurations, themes, etc.) will be stored. On a single-SD-card setup, the `/userdata` folder will always point to the *SHARE* partition of your primary SD card. If you have a device with more than one SD card slot and choose to create a dual-SD-card setup, the `/userdata` folder will point to the main partition of your secondary SD card **instead**.

!!! info "You can switch between single/dual SD card mode by following the steps in the section about [Using a second SD card](#using-a-second-sd-card). Basically, by switching between internal/external storage, you just tell KNULLI which drive/partition `/userdata` should point to."

Inside the `/userdata` folder, you will find subfolders where you can store your games and other files. After installing for the first time, KNULLI will create and populate all these folders automatically. The most important folders for you to know are the following:

* `/userdata` (corresponds to either the *SHARE* partition of your primary SD card or the main partition of the secondary SD card)
    * `/bios` is the folder where you can store your BIOSes.
    * `/cheats` is the folder where you can store your cheats.
    * `/decorations` is the folder where you can store your decorations/bezels.
    * `/music` is the folder where you can store MP3 and OGG files to have them play as background music on EmulationStation. (The songs should have a sample rate of 44100Hz and a bitrate of 256kb/s max.)
    * `/roms` is the folder where you can store your games. Inside the folder you will find subfolders for all supported systems. Simply place your game files into the folders of the system the game was made for, e.g.
        * `/snes` is the folder where your SNES games should be stored.
        * `/gb` is the folder where your Gameboy games should be stored.
        * `/ports` is the folder where your ports (including [PortMaster](../../systems/portmaster) should be stored.
        * ...
    * `/saves` is the folder where your savegames will be stored.
    * `/screenshots` is the folder where your screenshots will be stored.
    * `/system` is the folder where your settings will be stored. You should not change anything in here, unless you are absolutely sure that you know what you are doing. However, it can't hurt to include this folder in your backups.
    * `/theme-customizations` is the folder where your theme customizations will be stored.
    * `/themes` is the folder where your themes will be stored.

!!! info "KNULLI only scans for games in the subfolders of the `roms` folder. Games which are stored anywhere else will not be recognized as such."

!!! info "KNULLI is a Linux system which is *case-sensitive*. Consequently, you should pay attention to capital letters when renaming folders or migrating folders from other systems/devices."

!!! info "For details about the files which are required/supported for each system, have a look into the [Systems](/../systems) section of the wiki."

### Using a second SD card

!!! warning "Please be aware that you may not be able to run certain games from the [PortMaster](../../systems/portmaster) library if your secondary SD card is formatted to exFAT. Some ports rely on symlinks and large swap files which are not supported by the exFAT file system."

If you use KNULLI on a device which has a second SD card slot, you may use the second slot for a secondary SD card, which can be used instead of the *SHARE* partition:

* Make sure that the second SD card is formatted to ext4 or exFAT. (You don't have to reformat it if it already is formatted to ext4 or exFAT.)
* Insert the second SD card into the second SD card slot while the device is turned off.
* Boot KNULLI, open the main menu by pressing the ++"Start"++ button and choose *System settings*.
* Find the *Storage* section where you can choose your *Storage device*.
    * Switch fom *Internal* (the "internal" storage is the *SHARE* partition of your KNULLI SD card) to the name of your second SD card, e.g., *SHARE - 25.6G*.
* Reboot KNULLI to apply the changes by pressing the ++"Start"++ button and choosing *Restart system* in the *Quit* section.
* During reboot, KNULLI will automatically populate the second SD card with all the folders and files you would usually find in the [userdata folder](#the-userdata-folder)/*SHARE* partition.
* If your second SD card is formatted to exFAT, you can now take the card out of the device when it is shut off. You can put the card in your computer to access it and populate it with your data.

!!! info "Older alpha versions of KNULLI created a subfolder `batocera` on your SD card and made the [userdata folder](#the-userdata-folder) point to that `batocera` folder. However, more recent versions got rid of the `batocera` folder entirely. To maintain compatibility with current KNULLI releases, simply move the entire contents of the `batocera` folder to the top level of your second SD card."

## Option 1: Network transfer

Network transfer can be used on any device which can be connected to the internet or a local network. (This includes devices with native networking capabilites and ones where networking can be added through an external dongle.)

This option first requires you to set up networking on your device.  Please see [Networking](../../configure/networking) for details. Once you have completed those steps, you will need

* the hostname and/or IP address of your device.
* the root password, if additional security measurements are in place, as explained in the [Networking](../../configure/networking) section.

### Windows networks (SMB)

Like many other operating systems, KNULLI supports SMB, the Windows network protocol. Depending on the type of computer you have, there are different options to transfer your games and other data via SMB.

After you successfully logged in, you will be able to access the `share` partition as a network drive. The network drive corresponds to your current [`/userdata` folder](#the-userdata-folder). Here, you can put all your data (games, etc.) in the respective folders.

#### Windows

On every Windows computer, SMB is integrated into the *Windows Explorer*.

<table>
	<tr>
		<td>
			<img src="/_inc/images/play/add-games/001a-smb-find-in-network-section.png">
			<p><strong>Step 1a: </strong>Find your KNULLI device in the <em>Network</em> section of your <em>Windows Explorer</em>.</p>
		</td>
		<td>
			<img src="/_inc/images/play/add-games/001b-smb-find-by-hostname.png">
	    	<p><strong>Step 1b: </strong>Find your KNULLI device by typing <code>\\KNULLI</code> in the address bar of your <em>Windows Explorer</em>.</p>
		</td>
		<td>
			<img src="/_inc/images/play/add-games/002-smb-open-share-folder.png">
			<p><strong>Step 2: </strong>Open the <code>share</code> folder of your KNULLI device to find the contents of the <code>/userdata</code> folder.</p>
		</td>
		<td>
			<img src="/_inc/images/play/add-games/003-smb-find-system-in-roms-folder.png">
			<p><strong>Step 3: </strong>Open the <code>roms</code> folder of your KNULLI device to find the subfolders for each systems (e.g., SNES).</p>
		</td>
	</tr>
</table>

!!! danger "Troubleshooting"

    - The name of the device corresponds to the **hostname** set it your KNULLI device. If `KNULLI` does not work, check the current **hostname** in the *Network Settings* of your KNULLI device. you can also use the **IP address** of your device when typing directly into the address bar.
    - If additional security measurements are in place, you will be prompted for your credentials.
        - The expected username is `root`, the password is the **root password** shown in the *Security* section of the *System Settings*.
    
#### macOS

- Open finder, select *Go* and then *Connect to Server* from the top menu.
- In the address bar that appears, type either `smb://[HOSTNAME]` or `smb://[IP-ADDRESS]` into the address bar (replace `[HOSTNAME]` with the hostname or `[IP-ADDRESS]` with the IP address of your device).
- If additional security measurements are in place, you will be prompted for your credentials.
    - The expected username is `root`, the password is the *Root password* shown in the *Security* section of the *System settings*.

### FTP

Using your FTP program of choice; set up an SFTP connection to the IP address to your KNULLI device. You will need hte hostname or the IP address of the device. Make sure the port is set to `22`. The expected username is `root` and the expected password is the *Root password* you will find in the *Security* section of the *System settings*.

### HTTP

!!! warning "This section is still under construction. Sorry, we're working on it! :smile: Until it's done, you might want to join us on [:simple-discord: Discord](https://discord.gg/HXPS3DAeeB) to get in touch - maybe we can help you there!"

### After transferring your data

Once your data is completely transferred, make sure to update your gamelists to make the data available. You can do so by pressing ++"Start"++ to open the main menu, then open *Game settings* and select *Update gamelists*. KNULLI will rescan all game folders and identify all the games you added to make them available in EmulationStation.

## Option 2: Accessing the SD card

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

If you have slot for a second SD card available, you can simply format a second SD card to exFAT on your computer and set it up as explained in the section [Using a second SD card](#using-a-second-sd-card).

## Option 3: Linux

If you have access to a Linux computer, you will be able to access the *SHARE* partition anyway, even if it is formatted to ext4. Simply plug your card into your Linux computer and you will be able to browse the directories and add files directly.
