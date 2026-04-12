# :material-micro-sd: Dual SD Card Migration

KNULLI runs fine as a single SD card CFW. However, some KNULLI-supported devices have more than one SD card slot which gives you the opportunity to run KNULLI in a dual-SD-card setup.

!!! warning "This guide is not applicable if you already run a dual SD card setup"

    This guide was written specifically for migrating from a single SD card setup to a dual SD card setup.

## Advantages

It is not technically required to run KNULLI in a dual-SD-card setup. However, using two dedicated SD cards for your KNULLI device brings a couple of advantages:

* **Updating** KNULLI is **significantly** easier if all your games, saves, configurations, etc., are stored on a dedicated SD card. You can always simply shut down your KNULLI device, remove your primary SD (which has **only** the OS) and **simply re-flash** it with the newest version without a single worry about your user data. (Technically, for most KNULLI updates it is possible to just do a manual update as explained in the [Update section](../play/update.md). However, **some updates require to re-flash**, which will be less of a hassle if you run with a dual-SD setup.
* **Switching devices** is easier. Since some KNULLI-driven device are somewhat different, it might be **required** to **remove your `system` folder** and reboot to re-configure KNULLI from scratch if you migrate to a different device. However, all your games, BIOSes, screenshots, themes, saves, decorations, etc. can still be easily transferred to a new device if you simply plug your old SD 2 into your new device.
* **Backing up your user data** can also be significantly easier if you can simply duplicate the entire SD card, e.g. by drawing an image from your original SD 2 and flashing it onto a new SD card.

## How to migrate

Before you start to migrate, make sure that you have the following tools at hand:

* your KNULLI-driven gaming device
* means to charge your KNULLI-driven device
* a primary KNULLI SD card
* a second SD card ready to be formatted
* a computer
* a working [SSH connection](../configure/ssh.md) to your KNULLI device

### Make sure that KNULLI uses internal storage

* On your KNULLI device, press the ++"Start"++ button to bring up the main menu.
* Go to *System Settings* and find *Storage Device* in the *Storage* section.
* Make sure that *Storage Device* is set to *Internal*.
* Reboot your KNULLI device.

### Format the second SD card

* Shut down your KNULLI device.
* Add the new SD card that you want to use for your user data into the  secondary SD card slot (TF2/Ext.) of your KNULLI device.
* Turn on your KNULLI device.
* Press the ++"Start"++ button to bring up the main menu.
* Go to *System Settings* and find *Frontend Developer Options*.
* In *Frontend Developer Options*, find *Format A Disk* in the *Tools* section.
* In the *Format A Disk* menu,
    * make sure to pick your secondary SD card as *Device To Format*. (You should be able to recognize it by its size. **Make sure not to format the "internal" device!**)
    * make sure to pick the file system *exfat* if you want to be able to access your SD card from Windows.
    * select *Format Now* **after** making the settings explained above.
* Keep an eye on the upper-right corner of the screen where the formatter will inform you about its state.
* Reboot your device when the formatter appears to be done: Press ++"Start"++ to bring up the main menu, head to *Quit*, then pick *Restart System*.

### Back up your user data

* Press the ++"Start"++ button to bring up the main menu.
* Go to *System Settings* and find *Backup User Data* in the *Storage* section.
* In the *Backup User Data* menu, set *Target Device* to your secondary SD card (usually, you only have **one single option** here, which corresponds to your secondary SD card).
* Select the *Start* button at the bottom of the screen after setting up your *Target Device*.
* KNULLI will back up your userdata to the second SD card now, **which might take a while**. Depending on the size of your user data folder, it might be required to **plug the charger cable** to make sure that the device will not run out of battery while copying your data.
* When copying is done, you will see a window with the word *Finished* and an *OK* button.
* Hit the *OK* button.

### Move your user data within your secondary SD card

At this point, all your data has already been copied to the second SD card. However, the backup tool creates a folder `batocera` on your SD 2 and stores all your userdata **inside** that folder. Unfortunately, KNULLI expects all this data **outside** of the `batocera` folder, so we have to move all the files now within your SD 2.

This section might look a little bit scary to Linux beginners, because we run a lot of text based commands in this section. However, **don't be scared**, as this guide will lead you through the process.

!!! info "Some basic Linux commands"
    In this section, we will use three text-based Linux commands to navigate your data storage and move files around.

    * `cd` - means *change directory*, a command to enter or exit directories (also known as folders)

    * `ls` - means *list*, a command to list the contents of a directory

    * `mv` - means *move*, a command to move files and directories

* Establish your [SSH connection](../configure/ssh.md).
* On the SSH prompt, type
  ```
  cd /media
  ```
  and press ++"Enter"++ to navigate into the `media` folder of your KNULLI file system.
* Notice that your prompt has changed to
  ```
  [root@KNULLI /media]# 
  ```
  where `/media` indicates which folder you are currently inside of!
* Inside the `/media` folder, type
  ```
  ls -lHa
  ```
  and press ++"Enter"++ to list the contents of the `/media` folder.
* You should see that your `/media` folder contains 3 subfolders: `BATOCERA`, `SHARE`, and `SHARE_1`. The output of the `ls -lHa` command should look something like this:
  ```
  drwxrwxrwt  5 root root  100 Oct 29 22:51 .
  drwxr-xr-x  1 root root  160 Oct 29 22:51 ..
  drwxr-xr-x  5 root root 4096 Jan  1  1970 BATOCERA
  drwxr-xr-x  4 root root 4096 Oct 29 22:53 SHARE
  drwxr-xr-x 16 root root 4096 Oct 29 22:05 SHARE_1
  ```
* One of the two `SHARE` folders corresponds to your SD 1, the other one corresponds to SD 2. Unfortunately, you cannot be sure which is which, so you have to explore both folders to learn which is which:
* Type
  ```
  ls -lHa SHARE
  ```
  and press ++"Enter"++ to see the contents of the `SHARE` folder, then type
  ```
  ls -lHa SHARE_1
  ```
  and press ++"Enter"++ to see the contents of the `SHARE_1` folder.
* Only **one of them** will give you a very simple list of only 2 folders (`batocera` and `lost+found`) like this:
  ```
  drwxr-xr-x  4 root root  4096 Oct 29 22:53 .
  drwxrwxrwt  5 root root   100 Oct 29 22:51 ..
  drwxr-xr-x 16 root root  4096 Oct 29 22:05 batocera
  drwx------  2 root root 16384 Oct 29 22:50 lost+found
  ```
  **This is the folder you want, this is your SD 2 folder!**
* Enter your SD 2 folder by typing `cd <name-of-your-sd-2-folder>`, so either
    * `cd SHARE` (if your SD 2 folder is `SHARE`) **or**
    * `cd SHARE_1` (if your SD 2 folder is `SHARE_1`)
  and press ++"Enter"++ to confirm.
* Now, inside `/media/SHARE` (or `/media/SHARE_1`) move all the files from inside the `batocera` folder to the top level of the SD card by typing:
  ```
  mv batocera/{.,}* .
  ```
  (**Mind the spaces in this command, be very precise!**)
* You might see a response like:
  ```
  mv: cannot stat 'batocera/.*': No such file or directory
  ```
  In this case: **Do not be alarmed!**
* Type
  ```
  ls -lHa
  ```
  and confirm with ++"Enter"++ to see the contents of your SD 2 folder. The output should look something like
  ```
  drwxr-xr-x  17 root root 4096 Oct 29 23:34 .
  drwxrwxrwt   5 root root  100 Oct 29 23:30 ..
  drwxr-xr-x   2 root root 4096 Oct 29 23:34 batocera
  drwxr-xr-x  11 root root 4096 Jul 21 04:27 bios
  drwxr-xr-x   2 root root 4096 Oct 29 22:05 cheats
  drwxr-xr-x   2 root root 4096 Oct 29 22:05 decorations
  drwxr-xr-x   2 root root 4096 Apr 12  2024 extractions
  drwxr-xr-x   5 root root 4096 Apr 12  2024 kodi
  drwxr-xr-x   2 root root 4096 Apr 12  2024 library
  drwx------   2 root root 4096 Jul 21 04:29 lost+found
  drwxr-xr-x   2 root root 4096 Oct 29 22:38 music
  drwxr-xr-x 172 root root 4096 Oct 29 22:05 roms
  drwxr-xr-x   2 root root 4096 Apr 12  2024 saves
  drwxr-xr-x   2 root root 4096 Apr 12  2024 screenshots
  drwxr-xr-x   2 root root 4096 Apr 12  2024 splash
  drwxr-xr-x  13 root root 4096 Oct 29 23:30 system
  drwxr-xr-x   2 root root 4096 Oct 29 22:05 themes
  ```
* **Congratulations!** You have successfully moved all your userdata to the top level of your secondary SD card! Take a moment to be proud of yourself!
* To make sure that there are no leftovers, type
  ```
  ls -lHa batocera
  ```
  and press ++"Enter"++ to list the contents of the `batocera` folder. It should be empty, so it should give you a response like
  ```
  drwxr-xr-x  2 root root 4096 Oct 29 23:34 .
  drwxr-xr-x 17 root root 4096 Oct 29 23:34 ..
  ```
* Close the SSH connection - the hard part is already done!

### Switch KNULLI to external storage

Now, let's get back to your KNULLI device.

* Press the ++"Start"++ button to bring up the main menu.
* Go to *System Settings* and find *Storage Device* in the *Storage* section.
* Switch *Storage Device* from *Internal* to *Any External* or to the **specific** external device you want to use. As before, it is most likely indicated by its size.
* Reboot your KNULLI device to apply the storage change: Press ++"Start"++ to bring up the main menu, head to *Quit*, then pick *Restart System*.

