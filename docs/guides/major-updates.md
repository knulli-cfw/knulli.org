# :material-update: Major Updates

!!! warning "The safest way is a clean install"

    The safest way to apply a major update is to **start over** with a clean install. It might take a little longer, but it will safely avoid all potential issues.

Minor KNULLI updates can be installed manually by simply exchanging the `boot/batocera` file, as explained in the [Update section](../play/update.md). However, a **major** KNULLI update comes with significant changes which require a clean re-flash. Furthermore, a **major** update might also require to set all settings back to default since new settings might be introduced and existing settings might have been removed. However, it is possible to **salvage parts** of your previous installation and thereby **ease the process** of setting up KNULLI anew.

## Backing up your user data before re-flashing

If you run a dual SD card setup, all your user data is already stored on SD 2 anyway, so you do not need to back up anything.

However, if you run a single SD card setup, you might want to create a backup of your stuff before you re-flash KNULLI. Depending on the formatting of your SD card, you might be able to extract your user data either by plugging the SD card into a computer or by accessing your user data via [Network Transfer](../play/add-games/network-transfer.md). In any case, you should be able to back up the entire content of your `/userdata` folder (also known as `\\KNULLI\share` folder or `SHARE` partition) to a different data storage, e.g., a computer hard drive.

## Re-flashing KNULLI

For a major update, it is **mandatory** to re-flash KNULLI entirely. Re-flashing basically means to go through the installation process step-by-step as if you were setting up KNULLI for the first time. During this process, all remaining data will be wiped off your SD card and all your settings will be set back to default.

## Cherry-picking

Depending on your SD card setup, you might be able to cherry-pick certain things from a previous installation **after** you finished installing the new version of KNULLI. Basically, you will be able to cherry-pick almost everything, all your games, saves, themes, scraped media, decorations, etc.  **However, you will not be able to recover your previous settings.** A major update **requires** to return to **factory settings**.

!!! danger "Salvaging settings"

    If you are **really** tech-savvy, you might be able to (partly) salvage single configuration files from within your `system` folder by comparing the respective files word-by-word and adopting single settings. However, this requires a deep understanding of what the files do and how they work, so we **strongly discourage** technically inept users from even trying.

    You'd need to make sure only to adopt "harmless" settings and not to change any new technical defaults. In many cases, salvaging manually might take even longer than simply re-creating your settings from scratch. However, if you are **really** tech-savvy, it is theoretically possible.

### Cherry-picking data from a single SD card backup

If you prepared a backup of your previous installation, you can put some of the folders back after the installation process of the new KNULLI version is complete. **However, you should make sure not to adopt your previous `system` folder!** This folder might have dated settings and configurations which are now obsolete and/or incompatible with the new KNULLI version. Restoring an old `system` folder after re-flashing a major KNULLI update will lead to **unpredictable behavior**.

### Reset to factory settings

If you ran a dual SD card setup before, all your user data is still stored safely on your SD 2. However, this SD 2 still has the old `system` folder which might have dated settings and configurations which are now obsolete and/or incompatible with the new KNULLI version. **You need to make sure to remove the `system` folder and let KNULLI create a new one!** Furthermore, we **strongly recommend** to **remove the `ports` folder from `roms`** to make KNULLI provide the *PortMaster* installer.

#### Reset to factory settings via direct access

If you can access your SD 2 directly, you can simply plug it into your computer **before** you set it up as your data storage in KNULLI and **delete or rename the `system` folder** and **delete the `ports` folder from `roms`**. Afterwards, put SD 2 back in your device, switch *Storage* to *Any External* as explained in the [Dual-SD-Card setup section](../play/add-games/second-sd-card.md) and reboot to apply the change. During the reboot, KNULLI will re-create the missing folders `system` and `roms/ports` with their default values.

You can now start to set up your device and install PortMaster with the PortMaster installer that will have re-appeared in the restored Ports section.

#### Reset to factory settings via Wi-Fi

If your SD 2 cannot be accessed directly, you will have to restore factory settings after you put your SD 2 back to work. First, put SD 2 back in your device, switch *Storage* to *Any External* as explained in the [Dual-SD-Card setup section](../play/add-games/second-sd-card.md) and reboot to apply the change.

It is crucial now that you **do not change any settings** after rebooting. If you did change anything, please **reboot again**.

Now you need to **delete or rename the `system` folder** and **delete the `ports` folder from `roms`**, either by accessing your user data via [Network Transfer](../play/add-games/network-transfer.md) or by using the built-in OD-Commander if you know how to use it. Afterwards, **reboot immediately** without changing any settings. During the reboot, KNULLI will re-create the missing folders `system` and `roms/ports` with their default values.

You can now start to set up your device and install PortMaster with the PortMaster installer that will have re-appeared in the restored Ports section.
