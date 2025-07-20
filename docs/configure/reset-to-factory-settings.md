#  :material-folder-refresh: Reset To Factory Settings

Since KNULLI Gladiator II, KNULLI comes with a reset-to-factory function that's embedded in EmulationStation (the KNULLI GUI). If you feel like you need to start over with your configuration but you don't want to transfer all your games and BIOS files again, this is the option for you. It will **maintain your existing PortMaster installation** automatically.

Additionally, you still have the option to do a manual reset, e.g., in case the GUI cannot be launched anymore. However, the **manual reset** does **not maintain your existing PortMaster installation**. Instead, the instructions will tell you how to get back to a state where the PortMaster installer will be available to you.

## Reset to factory settings from EmulationStation

To reset to factory settings from the KNULLI GUI

* press ++"Start"++ to bring up the main menu
* go to *Device Settings*
* pick *Factory Reset*
* confirm that you really want to reset

## Manually reset to factory settings

!!! danger "Re-creating the entire `system` folder"

     **Usually**, KNULLI updates will **NOT** require you to re-create your entire `system` folder. Re-creating the `system` folder corresponds to **resetting to factory defaults**. Consequently, it will force you to **re-configure a lot of settings manually** since they will be gone afterwards! Do **NOT** do this, unless you are absolutely sure it is required.

As you might already know, **all your settings** are stored in your `userdata/system` folder as explained in the [Game Storage](../../play/add-games/game-storage) section.

If your system does not work as expected after you changed a setting and you can't find a way to undo said setting, your issue might still be fixed by resetting the corresponding configuration file or the entire `system` folder to factory settings. In **VERY rare cases**, it might also be required to adapt your settings to new KNULLI defaults by **replacing/updating some files** in that `system` folder after you installed an update.

The easiest way to achieve that is by just **removing** either the respective files **or** the entire folder. During the next boot, KNULLI will replace all the missing files with new files which contain the default settings.

### Back up your current settings

If you want or need to re-create a configuration file (or the entire `system` folder) with default settings, access your `userdata` folder the same way you always access it. Alternatively, you can use the built-in *OD-Commander* from the *Ports* category. Either way, we **strongly suggest** that you **rename** the `system` folder **or** the files you want to replace by adding a suffix like `.bak` (e.g., rename from `system` to `system.bak`). This way, you will be able to put your old settings back entirely or hand-pick single files/lines from your old settings.

#### Renaming files/folders with OD-Commander

* Go to the *Ports* category.
* Find and launch *OD-Commander*.
* You should already see the contents of your `userdata` folder on the left side, indicated by the headline `/userdata`. If you are not there, yet, navigate to `/userdata` by using up/down on the D-pad to navigate and the OK/Back buttons to enter/leave a folder.
* Locate the `system` folder on the left side of the screen.
* While the focus is on the `system` folder
     * **either** enter the folder and locate the single files or subfolders you want to re-create
     * **or** just stay, if you want to re-create the entire system folder.
* Once you have moved the focus on a file/folder you want to re-create
    * press ++"X"++ to open the file menu.
    * select *Rename*.
    * use the on-screen keyboard to rename the file/folder.

#### Re-create your configuration files

Afterwards, reboot your KNULLI device. It will re-create the missing files and folders from KNULLI defaults. Now, you can either re-configure all your settings via the EmulationStation GUI or you can hand-pick configuration details by comparing your old settings (`.bak`) with the new ones.
