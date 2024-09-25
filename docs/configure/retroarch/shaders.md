# :material-panorama-variant-outline: Shaders

RetroArch allows to apply shaders on top the visual output of the emulator core. This guide will give you the basics on how to apply shaders and where to put your own.

## Applying shaders

Generally, KNULLI expects you to make all your emulator settings from EmulationStation, the KNULLI frontend. Configuration files for each emulator are generated on demand when launching a game, based on the settings you made in EmulationStation. Consequently, settings you make in RetroArch while a game is running **do not stick** by default, as they will only apply for the game that is currently running and will be dropped the next time you launch a game, because the configuration is re-generated from scratch.

If you want RetroArch to handle your shaders instead of EmulationStation/KNULLI, you need to **disable** shaders in EmulationStation for the respective games/systems and create **overrides** from within RetroArch.

### Disable shaders for the game/system in EmulationStation

It may seem counter-intuitive, but to **enable** shaders from within **RetroArch**, you first need to **disable** shaders in **EmulationStation**. To do so

* **either** go to the *Advanced Game Options* by holding the launch button (++"A"++ or ++"B"++, depending on your setup) on the game in the game list to disable shaders for the **game**.
* **or** go to the *System Settings* by bringing up the main menu via ++"Start"++, head to ++"Game Settings*, then head to *Per System Advanced Configuration* to disable shaders for the **system**.
* Find the menu for *Game Rendering & Shaders* and make sure that *Shader Set* is set to *None*.

### Create an override file

**Overrides** can be applied to override the generated configuration on a per-game or per-core level. If you want to apply shaders for a single game **or** for the entire emulation core, you should first make sure to create an override for the system:

* Launch the game you want to apply the overrides to (or a game which uses the core you want to apply the overrides to).
* While the game is running, hold ++"Function"++ and press ++"B"++ to bring up the RetroArch menu.
* In the RetroArch menu, go to *Overrides* and either
    * *Save Core Overrides* to create an override file for the **entire emulation core**.
    * *Save Content Directory Overrides* to create an override file for all games of the current **emulation core** in a **specific folder** (e.g., only for `roms/gb` but not for `roms/gba`).
    * *Save Game Overrides* to create an override file for **the game you are currently running**.

You can also delete existing override files from this menu.

### Apply shaders

Once you have an override file in place, hold ++"Function"++ and press ++"B"++ to bring up the RetroArch menu (if it is not open, yet). Find the *Shaders* section in the quick menu and open it. In this menu, you can **load** and **remove** shaders.

You can apply more than one shader on top of each other, which is why you can **append** and **prepend** shaders, to make sure the shaders are support in whatever order you prefer them to be applied. There are countless possibilities, how to combine shaders, so we will not go into details here.

!!! info "Tutorial on shaders and overlays"

    Our friend Russ from Retro Game Corps has created a **very** thorough guide on how to use shaders and overlays. In this guide, he is giving countless examples on how to properly stack shaders and which shaders tie in well with which overlays and how to set them up. His guide is not KNULLI-specific, however, it is compatible with KNULLI. If you are new to shaders or if you need inspiration on how to tweak your shader setup, [have a look here!](https://retrogamecorps.com/2024/09/01/guide-shaders-and-overlays-on-retro-handhelds/)

If you choose to **load**, **append**, or **prepend** a shader, a menu will open which will bring up all the pre-defined shaders which **come with KNULLI**. At the top of the screen, you will see the folder you are currently in, which is `/usr/share/batocera/shaders`. By selecting `Parent Directory`, you can navigate up to the parent directory of the folder you are currently in.

!!! danger "Known issue: RetroArch top-level file system shortcuts currently do not work with KNULLI"

    Once you reached the **top level** of the file system (`/`) you can opt to select `Parent Directory` one last time. If you do so, you will end up seeing a list of **shortcuts** to **file system locations**. Instead of the folder icon (:material-folder-open:) you will see a database-like icon (:material-database:) in front of all the options. **Make sure not to enter this menu.**
    
    Once you reached this level of the navigation menu and attempt to reach **any** destination on your SD card from here, all your folders will **appear empty** even though they **are not**. You will **not** be able to find **any** shaders until you **cancel** the operation and bring up the menu again.
    
    You cannot do any **permanent damage**, however, if you are not aware of this issue, you might be lead into thinking your shaders are broken or in the wrong place. Most likely, they are not. Most likely, you ran into a bug within RetroArch on KNULLI devices.

## Adding your own shaders

KNULLI already comes with a lot of pre-defined shaders which are stored in the **read-only** part of the KNULLI file system in a folder called `/usr/share/batocera/shaders`. However, you are **not** supposed to **delete** or **add** any shaders there. Instead, KNULLI expects your **own shaders** to be stored in the `shaders` folder in your `userdata`/`SHARE` folder. (If you want to learn more about the `shaders` folder, have a look at the through documentation in the [Batocera wiki](https://wiki.batocera.org/emulationstation:shaders_set).)

If you do not have such a folder, yet, access your `userdata` folder (e.g., via [network transfer](../../../play/add-games/network-transfer)) and add the `shaders` folder. Afterwards, you can copy all your RetroArch shaders into that folder.

### Create a shortcut to your own shaders folder

As explained above, navigating from the default shaders folder to your custom shaders folder can be annoying if you have to do it regularly. However, depending on your choice of filesystem, it might be possible to create a shortcut from the read-only shaders folder that comes with KNULLI to your own `shaders` folder. If you regularly deal with your own custom shaders, this feature might come in handy to avoid navigating the entire file system every time you want to find your own shaders.

The easiest way would be to create a symbolic when your device is starting up. This could be achieved by simply adding/editing a `custom.sh` bash script in your `system` folder:

* Go to your `system` folder (e.g., via [network transfer](../../../play/add-games/network-transfer)).
* If it does not exist, yet, create a new text file `custom.sh`.
    * Windows users need to make sure **the file extension is correct**. (Please make sure your file extensions are visible before proceeding!)
* Edit `custom.sh` with a text editor (preferrably something like *Notepad++*).
* It might be required to manually assure UTF-8 encoding and Linux line endings!
* If the file is empty, add the line
  ```
  #!/bin/sh
  ```
  at the **top** of the file.
* Now add the line
  ```
  ln -s /userdata/shaders /usr/share/batocera/shaders/userdata-shaders
  ```
  at the **end** of the file.

After rebooting your system, it should now automatically create a link which makes `/userdata/shaders` available at `/usr/share/batocera/shaders/userdata-shaders`. Consequently, when you bring up the menu for **loading**, **prepending**, or **appending** shaders, you should find the subfolder `userdata-shaders` among the other contents of `/usr/share/batocera/shaders`. When entering `userdata-shaders`, you should find all your custom shaders you have stored in `/userdata/shaders`.

!!! info "Permanent link in overlay"

    It would also be possible to store a **permanent** link in the `overlay` file rather than re-creating the link on every boot. To do so, simply [SSH](../../ssh) into the device, create the link with the command shown above and run `batocera-save-overlay` to make the change permanent. However, by creating the link via `custom.sh` on boot, the link would survive re-flashing SD 1 on dual SD card setups and can also be included in your backups of the entire `userdata` folder.
