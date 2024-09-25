#  :material-layers-plus: Patches and Overlays

!!! danger "Important: Read this before you start!"

    This section deals with adding **patches** to your KNULLI installation **manually**. This is **not** a guide for **regular updates**. Please be absolutely aware that this guide is just a kick-off guide for **advanced users** who want to learn more about Linux and apply manual changes to their KNULLI installation.
    
    If you are looking for information on how to update your KNULLI device regularly, please head to the [Update](../../play/update) section instead!

!!! warning "SSH network access to your device is mandatory"

    Before reading any further, be aware that it is **mandatory** to be able to access a command line on your KNULLI device via **SSH** to **install patches** and **create overlays**. Consequently, you will **not** be able to do either unless your device is connected to your Wi-Fi (as explained in the [Networking](../networking) section) and you have prepared SSH access to your device  (as explained in the [SSH](../ssh) section).

This section covers details about installing **patches** and persisting changes to the operating system in an **overlay**. As a **regular KNULLI user**, you probably do **not** need to know any of this. This entire section is written for two groups of users:

* **Community members** from our [:simple-discord: Discord](https://discord.gg/HXPS3DAeeB) who want to try patches **before** they are included in a new internal or public build.
* **Advanced users** who know their way around Linux and want to make changes to their KNULLI setup.

## Understanding Linux file systems

If you are a Windows user who has never worked with Linux before, you might want to take a little time to understand how Linux file systems work. Bare in mind that this is a **simplified** explanation which is only meant to pick you up and give you a brief understanding of how KNULLI works differently from your Windows PC. If you want to learn more about how Linux work, we **strongly** recommend to find a more extensive source of information.

### File systems on Windows machines

On your Windows computer, each **drive** (or **partition**) has an assigned **drive letter**. You might think about them like labeled drawers of a filing cabinet. The **main drive** that hosts your Windows installation traditionally uses the drive letter `C:` - this is a relic of a time when drive letters `A:` and `B:` were reserved for the two floppy disk drives computers used to have. However, if you connect another drive to your PC, like a thumb drive or a SD card, Windows automatically assigns new drive letters to them, so you can access those drives from your *Windows Explorer*. Files and folders are addressed by their **absolute path** which starts with the **drive letter**. E.g., the folder which holds your pictures is located at

```
C:\Users\<username>\Pictures
```

### File systems on Linux machines 

Linux filesystems work a little different. On Linux, every **drive** is treated like a **folder**. A Linux system always has a so called **root** that **loosely** corresponds conceptually to the drive letter `C:` on a Windows machine. The **root** is always referred to by the symbol `/`. By definition, each **absolute path** always starts with the `/` symbol.

Other **drives** are treated like **subfolders** of the **root**. With a command called `mount`, any **empty folder** of a Linux system can be assigned to **any drive** of the device. It is even allowed, to have **more than one folder** that points to **the same drive**. Following the previous metaphor, consider a filing cabinet with only a **single drawer**.

For example, on your KNULLI device, your games are stored in

```
/userdata/roms
```

### The KNULLI file system

KNULLI is a Linux, so it uses a Linux file system. The entire KNULLI system is stored in a **read-only** SquashFS. (You can learn more about SquashFS on [Wikipedia](https://en.wikipedia.org/wiki/SquashFS).) The **only exception** is a **writable** folder called `/userdata`.

During boot, KNULLI uses the `mount` command to make the folder `/userdata` point to a **writable** drive. By switching between **internal** and **external** storage (as explained in the [Second SD Card](../../play/add-games/second-sd-card) section), you tell KNULLI which **drive** to mount as `/userdata` during boot:

* If you use a **single SD card** setup (**internal** storage), KNULLI mounts the `SHARE` partition of **SD 1**.
* If you use a **dual SD card** setup (**external** storage), KNULLI mounts the main partition of **SD 2**.

When accessing your KNULLI device via Windows/SMB network transfer (as explained in the [Network Transfer](../../play/add-games/network-transfer) section), you will access a network drive called `share` that corresponds **exactly** to your **current** `/userdata` folder. The SMB address

```
\\KNULLI\share
```

points to the exact same place as the absolute path

```
/userdata
```

on your KNULLI device.

The [Game Storage](../../play/add-games/game-storage) section covers in great detail how to use the **writable** part of your device to add games, BIOS files, bezel decorations, etc. However, when you want to install **patches**, you want to modify files **outside** of the writable `/userdata` folder - that is, where the **overlay** comes into play.

#### Many ways lead to Rome

Keep in mind that Linux allows multiple paths to the same files and folders:

```
/media/SHARE
```

points to your **internal** storage while

```
/media/SHARE_1
```

points to your **external** storage (if you have a dual SD card setup).

Consequently, on a **single SD card setup**, the paths

```
/media/SHARE/system/batocera.conf
```

and

```
/userdata/system/batocera.conf
```

point **to the exact same file**.

Following that principle, on a **dual SD card setup**, the paths

```
/media/SHARE_1/system/batocera.conf
```

and

```
/userdata/system/batocera.conf
```

point **to the exact same file**, too.

## The overlay

Since everything outside of the `/userdata` folder of your KNULLI installation is **read-only** by definition, you will need to create an **overlay** to make **permanent** changes to your KNULLI installation. Otherwise, all changes will simply be undone after every reboot of your system.

Your primary SD card (SD1) has a drive called `BATOCERA`, which is formatted to **FAT32** and can be accessed easily from Windows, Linux, and MacOS. On that drive, you will find a folder called `boot` which contains a **file** called `batocera` - that file contains the **majority of your KNULLI installation**. (This is why you can manually update your KNULLI installation by simply replacing this file, as explained in the [Update](../../play/update) section.)

The **overlay** is **another** file that is just called `overlay` and resides in the same folder. The overlay is **optional** - usually, users do **not** have an overlay in place. The **overlay file** contains **changes** you made to the KNULLI installation, which will be applied **during boot**.

!!! danger "Important: Undo changes"

    If you have created an overlay that breaks your system, you can always **undo** all your changes by simply **deleting** the **`overlay` file** from the `boot` folder of your `batocera` partition.

    We **strongly recommend** to **always remove** your current overlay when you **update** your KNULLI installation, because patches and other modifications stored in the overlay might be **in conflict** with the new KNULLI version.

## Installing patches (or manual modifications)

!!! warning "Patches"

    Some community members on our [:simple-discord: Discord](https://discord.gg/HXPS3DAeeB) server occasionally provide patches you can install **manually**. These patches are usually new features which are either **considered** or already **confirmed** to be included in a future KNULLI release. Be aware that patches might be **experimental** and sometimes just a **prototype** for a final solution!

    By installing a patch and reporting feedback to the developers, you provide valuable assistance to the development of KNULLI. However, patches are often not yet approved by the community or the lead developers of the KNULLI project, consequently, there are no guarantees that they will work for **you**.

    Before installing a patch, make sure you find the source **trustworthy**.

Most patch installations (or manual modifications) to your KNULLI system follow a simple pattern:

* Add, replace, or remove files **outside** of your `/userdata` folder
* Make some of the files **executable** by applying the command `chmod +x` to the files.
* **Create** or **update** your **overlay** by executing the command `batocera-save-overlay` which makes all the changes persistent.
* Reboot your device.

Some developers **simplify** this process for you, by providing a **patch installer** which does most of these steps for you. However, even if you received a patch installer, you will still have to make the patch installer **executable** and run it from an SSH command line.

### Putting files into the right places

There are several options to put files in the right places **outside** of the `/userdata` folder.

* Some patches come with a **patch installer** which moves the file for you. In this case, simply store the **patch installer** and all patch files in your `/userdata` folder according to the specifications made by the developer.
* You can use SCP/FTP to access the entire KNULLI file system. You will find a subsection on how to use SCP/FTP in the [Network Transfer](../../play/add-games/network-transfer) section. This approach allows to put the files **directly** to their **final destination**.
* You can copy the files to your `/userdata` folder by the same method you add your games and BIOSes. Afterwards, you can move the files **from** their location inside `/userdata` **to** their **final destination**
    * **either** by using the *OD-Commander* tool you will find in the *Ports* category of your KNULLI device
    * **or** by connecting via SSH (as explained in the [SSH](../ssh) section) and copying/moving the files via `cp`/`mv` on the command line, e.g.,
    ```
    cp /userdata/system/some-file.sh /usr/bin/some-file.sh
    ```
    or
    ```
    mv /userdata/system/some-file.sh /usr/bin/some-file.sh
    ```
    where the **first** argument is always the path to the **source file** you want to copy/move and the **second** argument is always the **final destination** where you want the file to end up.    
    
### Making files executable

After you have moved the files in the right places, you need to make sure that all files which are **supposed** to be executable **actually are** executable.

#### Linux file system permissions

On Linux file systems, three different permissions can be set on each file or folder:

* The **read** (`r`) permission allows to **read** the contents of the file.
* The **write** (`w`)  permission allows to **modify** or even **delete** the file and/or its content.
* The **execute** (`x`)  permission allows to **execute** the file, which is a special precaution to avoid users accidentally launching dangerous programs. Each program has to be actively set to actually be **executable**.

The three permissions can be set on each file for three different "user classes":

* The **owner** is a **single user** who **owns** the file. (It doesn't necessarily has to be the file's creator.)
* The **group** is a single **group of users** who might have a certain interest in the file.
* The **others** are **all other users** who are **not** the owner and **not** members of the group.

As a result, the permissions of each file can be represented by a 3-by-3 matrix. In this example, **everyone** can **read** and **execute** the file, but only the **owner** can **modify** it:

|        | Read                  | Write                 | Execute               |
| ------ | --------------------- | --------------------- | --------------------- |
| Owner  | :material-check-bold: | :material-check-bold: | :material-check-bold: |
| Group  | :material-check-bold: |                       | :material-check-bold: |
| Others | :material-check-bold: |                       | :material-check-bold: |

This corresponds to a string representation of

```
rwxr-xr-x
```

where the first 3 letters represent the **owner**, the next 3 letters represent the **group** and the last 3 letters represent the **others**.

#### Setting Linux file permissions

!!! warning "Make sure that files need to be executable"

    Before you make a file executable, make sure the file actually **needs** to be executable. Do **not** randomly mark files as executable "just to be safe". If you are unsure, check back with the patch developer and ask if a file should be executable or not.

Again, you have several options to set the file permissions on the files of your KNULLI system and make sure a file is **executable**:

* If using WinSCP, you can right-click a file and select *Properties*.
    * In the *Common* tab, go to the *Permissions* section and make sure all the *X*es are **checked** if the file is required to be **executable**.
* If connected via SSH (as explained in the [SSH](../ssh) section), you can
    * use the `ls` command to check the permissions of a file, e.g.,
    ```
    ls -l /userdata/system/patch-installer.sh
    ```
    to see if a file called `patch-installer.sh` is executable. The response will look like
    ```
    -rwxr-xr-x 1 root root 458 Aug  3 22:20 /userdata/system/patch-installer.sh
    ```
    and you can tell from the part `rwxr-xr-x` if a file is executable for **everyone**.
    * use the `chmod` command to change the permissions of a file and make it executable, e.g.,
    ```
    chmod +x /userdata/system/patch-installer.sh
    ```

### If provided: Run the patch installer

If your patch came with a **patch installer** which you have made executable in the previous step, you can now **execute** the patch installer from the SSH command line. To do so, establish a SSH connection (as explained in the [SSH](../ssh) section) and launch the installer by calling the script by its name from the command line (**Mind the dot** at the beginning of the command!), e.g.,
```
./userdata/system/patch-installer.sh
```

Have a close look at the output of this command, maybe copy-paste it to a text file for debugging purposes and reach out to the [:simple-discord: Discord](https://discord.gg/HXPS3DAeeB) community if you have problems understanding the output.

### If required: Create overlay manually

Some **patch installers** implicitly create or update the **overlay**. However, some do not. If your patch did **not** come with a patch installer, if you want to patch in your **own modifications**, or if you are not sure whether the patch you applied created an overlay, you better do it yourself. To do so, establish a SSH connection (as explained in the [SSH](../ssh) section) and execute the following command:
```
batocera-save-overlay
```
Once the overlay was created/updated successfully, you can type
```
reboot
```
to reboot your system and check if your changes are still in place afterwards.
