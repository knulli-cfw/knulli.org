---
search:
  exclude: true
---
# TrimUI Smart Pro

## Overview

| Device | CPU / Architecture | Kernel | GL driver | Interface |
| -- | -- | -- | -- | -- |
| Trimui Smart Pro | Allwinner A133 / PowerVR GE8300 | Allwinner BSP | pvrsrvkm | Emulation Station |


## Installation

Our [Quick Start Guide](../../../play/quick-start/) will guide you through the process of installing and setting up KNULLI on the TrimUI Smart Pro.

## Joystick Calibration

In rare occasions, the joysticks of the TrimUI Smart Pro need calibration before they can be used with KNULLI. If you feel like some directions of your sticks are not working right or not going "all the way": Don't worry. It needs a bit of tinkering, but even if you aren't an expert hacker yet, this guide will help you calibrate your joysticks in no time!

### Calibrate your joystick in stock OS

The TrimUI Stock OS is installed directly on the device. Consequently, to boot stock OS, all you gotta do is shut your device down, remove the KNULLI SD card and boot it up again. This should take you right into the stock OS.

In stock OS

* go to *Setting*
* go to *System*
* launch to *Calibrate Joystick*
* follow on-screen instructions to calibrate **both** joysticks
* Take your time, do it thoroughly, make sure the joysticks work right

### Now let's do some really cool hacker things!

!!! info "Don't let the tech-babble scare you off!"

    We promise, this is is neither illegal nor dangerous, neither to you nor to your device! But it is sure something to brag about among your not-so-tech-savvy peers! Don't be scared, it's way easier than it sounds!
    
In the second step, we need to extract the configuration files of the newly calibrated joysticks from the stock OS. Unfortunately, the files are hidden in a part of the OS that you cannot access with conventional means. So we will now do what a good spy or a good hacker would do and go a less conventional route.

**ADB** is short for **Android Debug Bridge**. It is a programming tool for Android developers to access Android devices on a level users would usually never go to! Cool, huh? And now you are going to use it to retrieve two files from your device. Feel like a spy already?

* Plug your TrimUI Smart Pro to via USB to your computer (use the **bottom** port that is also used for charging)
* Make sure your TrimUI Smart Pro is booted up and is running **stock OS** for now
* **Download** and **install** the [ADB SDK Platform tools](https://developer.android.com/tools/releases/platform-tools#downloads) (**Memorize** the location/path/folder where you installed it!)
* Open a command line prompt
    * For **Windows** users: Press the *Windows* button, search for the *Command Prompt* or `cmd` app and open it (Do not confuse it with PowerShell!)
    * For **Linux** users: You probably have a favorite command line tool anyway and a strong opinion why it is the best, so we wouldn't dare making a suggestion
    * For **MacOs** users: Press *Command* + *Space* to invoke Spotlight, search for *Terminal* and open it
* You should now see a (most likely black) window where you can type commands like a really cool hacker would (after typing a command you need to press *Enter* to confirm!)
* You will need to navigate to the folder where you installed ADB now (it's good you memorized it as I told you above!)
    * Type `cd` (that's short for "change directory") followed by a space and the path to your ADB SDK Platform Tools installation, e.g.
        * `cd C:\Users\Knulli\tools\adb\platform-tools`
    * Once you reached your destination, you can use the `adb pull` command to pull (copy) the joystick calibration files from your device to a folder on your computer.
         * For example, to pull the files directly to your desktop on a **Windows** machine, try 
             * `.\adb.exe pull /mnt/UDISK/joypad.config %userprofile%\Desktop\`
             * `.\adb.exe pull /mnt/UDISK/joypad_right.config %userprofile%\Desktop\`
         * For example, to pull the files directly to your desktop on a **Linux** or **Mac** machine, try 
             * `./adb pull /mnt/UDISK/joypad.config ~/Desktop/`
             * `./adb pull /mnt/UDISK/joypad_right.config ~/Desktop/`
* Don't close the command prompt, yet - we'll use it once again in the next step!

And that's it! The fun part is over, you have successfully extracted your config files from the device like a real hacker would! I'm so proud of you! Good job!

### Replace KNULLI calibration files

Now that you are a real console jockey, the next part will come easy to you!

* Shut down your TrimUI Smart Pro device
* Grab your KNULLI SD cards and copy `joypad.config` and `joypad_right.config` to your `system` folder (you may do so directly by plugging the card into your device or by using network transfer)
* Plug the SD card back in your device (if it isn't plugged already) and boot KNULLI (if it isn't booted already)
* Now we need the command line prompt again!
    * Type `ssh root@knulli` to establish an SSH connection to your device ([read here to learn more about SSH](../../../configure/ssh/))
    * Once the SSH connection is established, use the `cp` command (short for copy!) to copy the files you added to their final destination:
        * `cp /userdata/system/joypad.config /mnt/UDISK/joypad.config`
        * `cp /userdata/system/joypad_right.config /mnt/UDISK/joypad_right.config`
* Keep the command prompt open, we might still need it in the final step!

Unfortunately, those files will only stay in this place temporarily, so we need to do one last step to make this change stick!

### Make the changes stick via overlay or via `custom.sh`

As explained above, changes to the `/mnt/UDISK/` folder will **not survive a reboot**. I could bore you with a complicated explanation now, but you don't really care, do you? ([If you do, you can learn more here.](../../../configure/patches-and-overlays/))

For now, we just want to make your new calibration files stick. You have two options now:

* **persist** the changes in an overlay file
* create a `custom.sh` script to put the files in the right place after every boot

#### Option 1: Overlay file

Persisting changes in an overlay file is **easier**, however an overlay must be **deleted** every time you update your system. Hence, every time you update your device, you gotta SSH in, copy the files in their place, and persist the change in an overlay **again**. If you want this option:

* type `batocera-save-overlay` in the command prompt while the SSH connection is still established and wait for the command to do its magic
* That's it, you are done, you may close the command prompt now!

#### Option 2: `custom.sh`

By adding a `custom.sh` script, you can make sure to **copy** the files to the right place after **every boot**. This is a little bit harder to do because you need a couple more cool hacker things, but in the end, this is the endgame because you will never have to bother with the stupid calibration files again after you did this. The `custom.sh` file **will survive an update**. Intrigued? Alright, let's do this!

* Get a simple plain text editor (for Windows, we **strongly** recommend **[Notepad++](https://notepad-plus-plus.org)**, also please mind that *Word* and similar applications are **not** plain text editors!)
* In the command prompt with the SSH connection still established, type `touch /userdata/system/custom.sh`
* Open the file in the text editor
* Add the following text to your file (and maybe understand that it just repeats the two `cp` commands from above, so basially the file just tells KNULLI to always copy these two files again right after boot!)

```
#!/bin/bash

cp /userdata/system/joypad.config /mnt/UDISK/joypad.config
cp /userdata/system/joypad_right.config /mnt/UDISK/joypad_right.config

```

* Make sure the file has **UTF-8 encoding** and **Unix Line Endings**
    * In **Notepad++**: At the bottom right of the screen there's 3 boxes:
        * The **second** from the right shows the **encoding** - right click it to see options, make sure *UTF-8* is selected
        * The **third** from the right shows the **line endings** - right click it to see options, make sure *Unix (LF)* is selected
* Save your file!
* That's it, you are done, you may close the text editor and the command prompt now!

Congratulations! You now saved your first bash script! This was your first step into programming, how does it feel?

#### Let's try it!

No matter if you went with the overlay or the `custom.sh` script - you are ready for a test run now! Launch a game which makes use of the sticks and see if the calibration works now! If the calibration still isn't to your liking, repeat the above steps until you get the expected result.

After a successful test, reboot the device once and launch the same game again to verify that the changes stick. If not, maybe you need to repeat the steps about replacing the calibration files and persisting the change, maybe something went wrong.

## Extracting the kernel and bootloader

!!! danger "This section is for developers"

    This section is for **developers** who want to compile their own KNULLI build from **source code**. If you simply want to **install** KNULLI on your device, you can safely ignore this section and simply follow the [Quick Start Guide](../../../play/quick-start/).
    
    The KNULLI distribution for the TrimUI Smart Pro **already includes** a bootloader, u-boot, and kernel in binary form extracted from the stock firmware. There is **no need** to extract any of those manually unless you need them to compile KNULLI **from scratch**.

TrimUI has not published the source code of the u-boot and kernel of the TrimUI Smart Pro. They have published some libraries and SDK, but those do not include the BSP that includes the kernel, u-boot, and bootloader. In order to have a working configuration you have two options:

* You can use the stock kernel, bootloader, and u-boot from the stock SDCARD. See below for instructions on how to extract those. 
* You can compile the included kernel with the source code of this distribution, however, note that there will be a few elements that are missing

The firmwmare included in releases uses the kernel, bootloader, and u-boot from the stock firmware.

You can read [this page](../../guides/A133-firmware-extract.md) to learn how to extract the bootloader, u-boot, and kernel from the stock firmware.
