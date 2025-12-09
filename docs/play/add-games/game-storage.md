# :material-folder-home: Game Storage

Before you start adding your games, please take the time to understand how data storage is structured on KNULLI. This might be helpful, *especially* when you already have experience with other CFWs and want to migrate your data.

## The `/userdata` folder

KNULLI supports **single** and **dual SD card** setups. Internally, KNULLI has a folder called `/userdata` where **all your data** (games, screenshots, bezels, saves, configurations, themes, etc.) will be stored. On a single-SD-card setup, the `/userdata` folder will **always** point to the *SHARE* partition of your **primary SD card**. If you have a device with more than one SD card slot and choose to create a **dual-SD-card setup**, the `/userdata` folder will point to the main partition of your **secondary SD card instead**.

Consequently, you will **not** be able to use the *SHARE* partition of SD 1 and SD 2 **at the same time**. Only one of those SD cards can be mounted as `/userdata` at a time. When you access your storage via [SMB network transfer](./network-transfer.md) or [MTP](./accessing-via-usb.md), you will only find **one** *SHARE* folder, which will always point at your `/userdata` folder. Therefore, when running a dual-SD-card setup, your internal *SHARE* partition will neither be used by KNULLI, nor be accessible via network transfer or MTP.

!!! info "Internal and external storage"

    You can switch between single/dual SD card mode by following the steps in the section about [Using a second SD card](./second-sd-card.md). Basically, by switching between internal/external storage, you just tell KNULLI which drive/partition `/userdata` should point to.

!!! info "Understanding mounting on Linux"

    Windows users might not know this: On Linux systems, drives are **not** addressed by "drive letters" like you know it from your Windows machine. Instead, Linux mounts the drives into **folders**. The Linux file system does not know any drive letters at all, it consists of just **one** file tree with `/` being the "root" of the tree. Every folder that exists is a **subfolder** of `/`.
    
    You might imagine `/` to be roughly comparable to `C:\` on your Windows machine. Try to imagine that, when plugging an USB stick, the stick will not appear as `D:\` but as a folder on `C:\`, e.g. `C:\media\my-usb-stick\`.

    KNULLI is a Linux, so it uses the Linux file system. More specifically, KNULLI always needs to have a folder called `/userdata` (again, roughly comparable to `C:\userdata`) where KNULLI expects all your data (games, themes, saves, etc.) to be located. However `/userdata` is **also** a mount point for a **drive**. By switching between **internal** and **external**, you basically tell KNULLI where `/userdata` should point to after the next boot - it is **either** the internal *SHARE* partition **or** SD 2.

    KNULLI expects **all** your data to be in `/userdata`, it **does not look** for games, themes, or anything else **outside** of the pre-defined folder structure. This is why it is **not** possible to use both SD cards as game storage **at the same time**.

## Pre-defined folders for your data

Inside the `/userdata` folder, you will find subfolders where you can store your games and other files. After installing for the first time, KNULLI will create and populate all these folders automatically. The most important folders for you to know are the following:

* `/userdata` (corresponds to either the *SHARE* partition of your primary SD card or the main partition of the secondary SD card)
    * `/bios` is the folder where you can store your BIOSes.
    * `/cheats` is the folder where you can store your cheats.
    * `/decorations` is the folder where you can store your decorations/bezels.
    * `/music` is the folder where you can store MP3 and OGG files to have them play as background music on EmulationStation. (The songs should have a sample rate of 44100Hz and a bitrate of 256kb/s max.)
    * `/roms` is the folder where you can store your games. Inside the folder you will find subfolders for all supported systems. Simply place your game files into the folders of the system the game was made for, e.g.
        * `/snes` is the folder where your SNES games should be stored.
        * `/gb` is the folder where your Gameboy games should be stored.
        * `/ports` is the folder where your ports (including [PortMaster](../../systems/portmaster.md)) should be stored.
        * ...
    * `/saves` is the folder where your game saves as well as core save states will be stored.
    * `/screenshots` is the folder where your screenshots will be stored.
    * `/system` is the folder where your settings will be stored. You should not change anything in here, unless you are absolutely sure that you know what you are doing. However, it can't hurt to include this folder in your backups. Furthermore, this folder is considered your Linux home directory (`$HOME`, `~`).
    * `/theme-customizations` is the folder where your theme customizations will be stored.
    * `/themes` is the folder where your themes will be stored.

!!! info "Folders for your rooms"

    KNULLI only scans for games in the subfolders of the `roms` folder. Games which are stored anywhere else will not be recognized as such. If you are unsure, which folder to choose for your games, we strongly suggest to have a look into the [Batocera Wiki](https://wiki.batocera.org/systems)!

!!! info "KNULLI is case-sensitive"

    KNULLI is a Linux system which is *case-sensitive*. Consequently, you should pay attention to capital letters when renaming folders or migrating folders from other systems/devices.
