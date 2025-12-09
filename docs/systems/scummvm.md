# :material-cursor-default-click-outline: ScummVM

ScummVM is a collection of source ports and reimplementations of game engines for point-and-click adventure games. KNULLI includes ScummVM by default. If you want to find out if your games can be played with ScummVM, we suggest having a look at the [compatibility chart at the ScummVM website](https://www.scummvm.org/compatibility/).

Within KNULLI, ScummVM is considered a "system" which appears on your home screen just like SNES, PlayStation, etc. However, technically, ScummVM is **not** a system. ScummVM supports a lot of different games which have been developed for different systems originally, such as DOS, Windows, Macintosh, etc.

!!! info "Point and click"

    By default, the cursor of your ScummVM game can be moved with the **d-pad** and/or the **left analog stick** while ++"L1"++ and ++"R1"++ will correspond to left and right click. The ++"Start"++ button will bring up the ScummVM main menu which will allow you to save, load, and edit some settings.
    
    KNULLI also supports connecting a mouse via Bluetooth, as explained in the [Controls](../configure/controls.md) section. However, only the **libretro-integrated** variant of ScummVM currently accepts Bluetooth mouse control input.

## Standalone and RetroArch ScummVM

KNULLI comes with two different ScummVM variants: A RetroArch-integrated ScummVM core (`libretro:scummvm`) and a standalone ScummVM (`scummvm`) installation. Both work fine on most KNULLI-driven handhelds, however, some of the more demanding games will perform better on the **standalone** version.

Both variants come with the ScummVM launcher which relies on a `scummvm.ini` file to keep all the game-specific settings.

* **Standalone** ScummVM keeps its `scummvm.ini` in `system/.config/scummvm`
* **Libretro** ScummVM keeps its `scummvm.ini` in `bios`.

!!! info "Switching between ScummVM variants"

    ScummVM is **not an emulator**. As explained above, ScummVM is a collection of source ports and reimplementations of game engines. However, if you want to switch between ScummVM variants, you can do so by setting the *Emulator* setting for the ScummVM "system" or for a given ScummVM game to the respective ScummVM variant (`libretro:scummvm` or `scummvm`).
    
    To switch the ScummVM variant **globally** (for all ScummVM games), press ++"Start"++ to bring up the main menu, go to *Game Settings*, then *Per System Advanced Configuration*. Go to *ScummVM* where you will find the *Emulator* setting.

    To switch the ScummVM variant **for a single game** (which will always override the current global setting!), go to the ScummVM section of the home screen. Find the game you want to set up. Press and hold the button which launches the game (either ++"A"++ or ++"B"++ depending on your setup) to bring up the game menu. Head to *Advanced Game Options* where you will find the *Emulator* setting.

## Adding ScummVM games

KNULLI will attempt to identify your ScummVM games automatically when you launch the device or when your *Update Gamelists* from the *Game Settings* menu. However, to make sure that KNULLI will be able to identify your games, please make sure **not** to organize them **in subfolders**.

Technically, ScummVM games are **not** ROMs. However, KNULLI expects your ScummVM games in the `scummvm` subfolder of the `roms` folder.

Depending on the game, you will need some files from your original copy of the game to run it with ScummVM. Have a look at the [Supported Games section of the ScummVM wiki](https://wiki.scummvm.org/index.php?title=Category:Supported_Games) to figure out which files you will need to run your game.

To add a ScummVM game

* Go to the `roms/scummvm` folder in your  [`userdata` folder](../play/add-games/game-storage.md)
* Create a **subfolder** for the **game** (e.g., `roms/scummvm/monkey1/`)
* Put the game files into the newly created game folder

!!! warning "Keep it simple"

    **Do not** attempt to organize your games in a deeper subfolder structure. KNULLI expects your ScummVM game folders on the top level of the `roms/scummvm` folder.
    
    If you hide your games in complex subfolders (e.g., `roms/scummvm/monkeyisland/monkey1/`), KNULLI will **not be able to detect them!**

### Auto-detect your ScummVM games

If you added the games directly to the [SD card](../play/add-games/accessing-sd-card.md), put it back into the device and turn it on to boot KNULLI. If you added the games via [USB](../play/add-games/accessing-via-usb.md) or [network transfer](../play/add-games/network-transfer.md), simply press ++"Start"++ to bring up the main menu, go to *Game Settings* and hit *Update Gamelists*.

In **both cases**, KNULLI will employ the ScummVM-integrated auto-detection to set up your games **automatically**. Once the update to the gamlists is done, you should find your newly added games in the *ScummVM* system/collection.


### Set your ScummVM games up manually

!!! danger "Only set up manually if the auto-detection does not work for you"

    KNULLI is able to auto-detect supported ScummVM games. You should not attempt to set your games up manually unless you are absolutely sure that auto-detection did not work for you.

Unlike most other systems, your ScummVM games need a little adjustment to be run on your KNULLI device. To set a game up manually, you need to determine the **launcher ID** of each ScummVM game.

#### Step 1: Determine the launcher IDs of your games

To run your ScummVM game on KNULLI, you will need to find out the **launcher ID** of the ScummVM game. You can do this by adding the game to the ScummVM launcher on your handheld device. Afterwards, within the ScummVM launcher, go to *Game Options*, find the *Game* tab and take a look at the *ID* field.

Since KNULLI launches ScummVM games directly without opening the launcher, the easiest way to access the ScummVM launcher is by attempting to launch a game which does not exist within ScummVM:

* Create a new text file `ScummVM-Launcher.scummvm` in `roms/scummvm`.
* Edit the file and insert any text which does **not** correspond to a ScummVM game, e.g. the word `knulli`.
* Press ++"Start"++ to bring up the main menu, go to *Game Settings* and hit *Update Gamelists*.
* You should find the "game" ScummVM-Launcher in the ScummVM section now.
* If you want to set up **standalone** ScummVM
    * press and hold the button which launches the game (either ++"A"++ or ++"B"++ depending on your setup) to bring up the game menu.
    * Head to *Advanced Game Options*.
    * Set *Emulator* to `scummvm`
* If you want to set up **libretro-integrated** ScummVM
    * press and hold the button which launches the game (either ++"A"++ or ++"B"++ depending on your setup) to bring up the game menu.
    * Head to *Advanced Game Options*.
    * Set *Emulator* to `libretro:scummvm`

#### Step 2: Create the ScummVM files

Make sure that you have added all the game files for your games and determined their respective launcher IDs. Now, to make the games show up in EmulationStation, you need to create the ScummVM files for every game.

* Go to the folder of your game (e.g., `roms/scummvm/sword1`).
* Create a new text file in the game folder.
* Make sure the file name ends with `.scummvm` (e.g., `Broken Sword.scummvm`).
* Edit the text file and insert the **launcher ID** into the text file (e.g., `sword1-win-de`).

#### Step 4: Update gamelists

Press ++"Start"++ to bring up the main menu, go to *Game Settings* and pick *Update Gamelists* to scan for your newly added games. Afterwards, you should find your ScummVM games in the *ScummVM* system/collection.

## Roland MT-32 music

Some of the engines provided by ScummVM support Roland MT-32 midi music. However, unlike other soundcard emulators like AdLib or CMS, Roland MT-32 music requires some additional files that need to be provided separately.

If you want to use Roland MT-32 music in your ScummVM games, you will have to provide the required files yourself. Once you've sourced the files, put them in the `bios` folder of your [`userdata` folder](../play/add-games/game-storage.md) like this:

``` bash
/bios
  └─ scummvm/
    └─ extra/
        └─ MT32_CONTROL.ROM
        └─ MT32_PCM.ROM
```

Once you have added the files

* Launch any ScummVM game.
* Press ++"Start"++ then `Return to Launcher` to get to the ScummVM launcher.
* From there go to `Global Options`.
* Go to the `Audio` tab.
* Set `Preferred Device` to `MT-32 emulator`.
* Quit ScummVM and re-launch the game.
* Enjoy the music.
