# :material-ferry: PortMaster

PortMaster is a management software for installing and updating various ports for Linux-driven handheld video game systems. Ports are, in this case, video games which have been adapted from other systems and optimized to run natively on your handheld device. You will find more information about PortMaster on the [PortMaster website](https://portmaster.games).

## Games

The PortMaster library is huge and contains almost 500 different games already. However, not all of those games will run on your respective device. Hence, when browsing the PortMaster library on your device, you will only find games which are compatible with your handheld.

The library is divided in two major categories:

* Ports which are *"Ready to run"* are ports of free games which you can install and immediately start playing.
* Ports with *"Files needed"* are ports of commercially released games. To be able to run these ports, you will have to provide essential files from the games you bought.

## Installing PortMaster

After installing KNULLI for the first time, you will find the PortMaster install script (*Install.PortMaster*) in the *Ports* category. Running this script will install PortMaster on your KNULLI device and restart EmulationStation automatically. Now, you will find *PortMaster* in the *Ports* category instead of the install script.

!!! info "If the PortMaster installer (*Install.PortMaster*) is missing from your *Ports* section, do not panic. This might happen, e.g., if you [updated](../../play/update) from a previous version without PortMaster or if you use an SD card which is already populated with games. In this case, you can find the installer in our [Github repository](https://github.com/knulli-cfw/distribution/blob/knulli-main/board/batocera/allwinner/h700/fsoverlay/usr/share/batocera/datainit/roms/ports/Install.PortMaster.sh). Download the file (`Install.PortMaster.sh`) and add it to `roms/ports` as you would [add a game](../../play/add-games)."

## Managing games

PortMaster will automatically check for updates during launch and apply them, if necessary. Afterwards, you will find yourself at the main menu of PortMaster. Here, you can find ports to install or manage the ports on your device.

!!! info "PortMaster requires an active internet connection to install and update ports."

* *Featured Ports* presents a hand-picked selection of ports, curated by the PortMaster team.
* *All Ports* contains a list of all ports which are compatible with your respective device, including ports which are ready-to-run and ports which require some additonal files.
* *Ready To Run Ports* contains a list of all free ready-to-run ports which you can install and immediately start playing.
* *Manage Ports* provides options to update, re-install, or uninstall the ports which are currently installed on your device.

There is also an *Options* section where you will find settings for PortMaster itself.

### Installing ready-to-run games

To install a ready-to-run game, simply find it in the *Ready To Run Ports* section and install it by following the on-screen instructions. Once you are done installing your games, exit PortMaster from the PortMaster main menu. EmulationStation will restart automatically to apply the changes and detect the newly installed games. You will now find the game in the *Ports* category.

If the game does not show up, press ++"Start"++ and pick *Game settings* and *Update gamelists* to restart EmulationStation and detect new games. If that does not help, launch *PortMaster*, find the game in the *Manage Ports* section and reinstall it.

### Installing games with files needed

To install a game with files needed, simply find it in the *All Ports* section and install it by following the on-screen instructions. Once you are done installing your games, exit PortMaster from the PortMaster main menu. EmulationStation will restart automatically to apply the changes and detect the newly installed games.

Now, you will have to take care of the files needed to be able to play the game. To do so, gain access to your `roms/ports` folder by one of the methods described in the [Add Games](../../play/add-games) section. In your `roms/ports` folder, you will find subfolders for all the ports you have installed via PortMaster. Find the subfolder which corresponds to the game you want to install.

The [Games](https://portmaster.games/games.html) section of the PortMaster website will provide you with instructions about which files you will need and where to put them. Additionally, you might find a `readme` file in the folder where the port is stored. Depending on the game, you might need a specific version to be compatible with the port. You will often find compatible versions of the games on [GOG](https://gog.com) or [Steam](https://store.steampowered.com), however, you should read the instructions of the respective port carefully before buying the game to be sure that you found the right version of it.

After you have added all the required files, the game should be ready to run. Simply go to the *Ports* category, find the game, and launch it!

!!! info "During first launch, some ports will take some time to compress and/or compile and/or repackage files from the original game. Depending on the game, this may take several minutes, sometimes even longer. Do not panic if the first launch takes some time. Do not panic if you see a lot of command-line messages. Some games may even require several attempts to prepare all the necessary assets for playing the game on your handheld. Be patient."

If the game does not show up, press ++"Start"++ and pick *Game settings* and *Update gamelists* to restart EmulationStation and detect new games. If that does not help, launch *PortMaster*, find the game in the *Manage Ports* section and reinstall it.
