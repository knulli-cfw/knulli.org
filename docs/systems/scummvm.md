# :material-cursor-default-click-outline: ScummVM

ScummVM is a collection of virtual machines and re-implementations of game engines for point-and-click adventure games. KNULLI includes ScummVM by default. If you want to find out if your games can be played with ScummVM, we suggest having a look at the [compatibility chart at the ScummVM website](https://www.scummvm.org/compatibility/).

!!! info "Point and click"

    By default, the cursor of your ScummVM game can be moved with the **d-pad** and/or the **left analog stick** while ++"L1"++ and ++"R1"++ will correspond to left and right click. The ++"Start"++ button will bring up the ScummVM main menu which will allow you to save, load, and edit some settings.
    
    However, KNULLI also supports connecting a mouse via Bluetooth, as explained in the [Controls](../../configure/controls) section.

## Standalone and RetroArch ScummVM

KNULLI comes with two different ScummVM emulators: The RetroArch-integrated ScummVM core (`libretro:scummvm`) and the standalone ScummVM (`scummvm`). Both work fine on most KNULLI-driven handhelds, however, some of the more demanding games might run a little better on the **standalone** version.

Both versions come with the ScummVM launcher which relies on a `scummvm.ini` file to keep all the game-specific settings, however, both versions work slightly different:

* **Standalone** ScummVM
    * keeps its `scummvm.ini` in `system/.config/scummvm`.
    * will **only** launch games from EmulationStation which have been added to `scummvm.ini`
        * either by manually editing the file or
        * by adding the games from the **standalone** launcher.
* **Libretro** ScummVM
    * keeps its `scummvm.ini` in `bios`.
    * will launch games from EmulationStation **without** adding them to the `scummvm.ini`.
    * will **not** memorize game-specific settings for games which are launched from EmulationStation.

!!! info "Updated version coming soon"
    We've already adopted a recent update to Batocera, which improved the behavior of the **Libretro** ScummVM emulator. With every KNULLI build **after** August 19th 2024, **libretro** ScummVM will memorize game specific settings if the game was added to `scummvm.ini`, either by manually editing the file or by adding the games from the **standalone** launcher. To call the came as configured in the `scummvm.ini`, the `.scummvm` file needs to **contain** the **exact launcher ID**.

## Adding ScummVM games

Unlike most other systems, your ScummVM games need a little adjustment to be run on your KNULLI device. This guide will help you to set up your ScummVM games properly. To do so, it is required that you understand the difference between the **game ID** and the **launcher ID** of ScummVM.

### Game IDs

Within ScummVM, each game has a dedicated **game ID** that consists of two parts: The ID of the **engine** (or developer) and the ID of the **game** within that engine. Those two values are combined, separated by the `:` character. For example, classic LucasArts adventures run in the SCUMM engine, which has the ID `scumm`. Within that engine, "Indiana Jones And The Fate Of Atlantis" by LucasArts has the ID `atlantis`. Consequently, the **game ID** of "Indiana Jones And The Fate of Atlantis" is `scumm:atlantis`.

The game "Atlantis: The Lost Tales" by Cryo also goes by `atlantis`, however, the engine for that game has the ID `cryomni3d`, so the **game ID** of "Atlantis: The Lost Tales" is `cryomni3d:atlantis`.

### Launcher IDs

When adding a game to the ScummVM launcher (e.g., on your computer or on your emulation device), the game receives another ID - the **launcher ID**. By default, the launcher ID **usually** corresponds to the game-part (the part after the `:`) of the **game ID**, sometimes **followed** by a set of **modifiers** that indicates a language or other version information.

For example, "Broken Sword" has the **game ID** `sword1:sword1`, the German Windows version of the game gets the **launcher ID** `sword1-win-de` by default. However, it is also possible to add **the same game** multiple times to the ScummVM launcher. In this case, the launcher ID receives a numerical suffix, for example, a second instance of "Broken Sword" would receive the **launcher ID** `sword1-win-de-1`.

### Step 1: Find out the (default) launcher ID

To run your ScummVM game on KNULLI, you will need to find out the (default) **launcher ID** of the ScummVM game. You can do this by adding the game to the ScummVM launcher on your computer or on your handheld device. Afterwards, go to *Game Options*, find the *Game* tab and take a look at the *ID* field.

!!! info "Open ScummVM launcher on your device"
    The launcher will pop up automatically if you try to launch a game that does not exist. For the **standalone** ScummVM launcher, you need to make sure that *Emulator* is set to `scummvm` in the *Game Settings* (or *System Settings*). Likewise, you will need to set *Emulator* to `libretro:scummvm` if you want to configure the **RetroArch-integrated** ScummVM.
    In both cases, create a `.scummvm` file for a game you know not to exist (e.g., `scummvm-launcher.scummvm`) and launch it from EmulationStation to bring up the launcher.

### Step 2: Add your game files

In the [`userdata` folder](../../play/add-games/game-storage), go to `roms`, then go to `scummvm`. Inside this folder, create a subfolder for every game you want to add. You can name the folder however you want.

Depending on the game, you will need some files from your original copy of the game to run it with ScummVM. Have a look at the [Supported Games section of the ScummVM wiki](https://wiki.scummvm.org/index.php?title=Category:Supported_Games) to figure out which files you will need to run your game and add them to the folder you just created, just as explained in the ScummVM wiki.

### Step 3: Create the ScummVM file

After you have added all the game files for a game, create a new text file in the folder of each game. Now, you need to rename this file **exactly** like the **default launcher ID** of this game. So, for example, for the German version of "Broken Sword" for Windows, the file should be named `sword1-win-de.scummvm`. This will allow the **RetroArch-integrated** ScummVM to launch the game from EmulationStation.

However, if you also want to be able to use **standalone** ScummVM **or** if you want to be able to save game-specific settings in the **RetroArch-integrated** ScummVM, you need to take an additional step and **edit** the text file, so that it **contains** the same **default launcher ID** the file is named after.

So, for the German version of Broken Sword, you will have a file `sword1-win-de.scummvm` which contains the following text:

```
sword1-win-de
```

!!! info "Saving game-specific settings in RetroArch-integrated ScummVM"
    Saving game-specific settings is only supported in KNULLI builds which have been released **after** August 19th, 2024.

### Step 4: Update gamelists

Press ++"Start"++ to bring up the main menu, go to *Game Settings* and pick *Update Gamelists* to scan for your newly added games. Afterwards, you should find your ScummVM games in the *ScummVM* category.

### Step 5: Add the game to the ScummVM launcher

Depending on your previous steps and the emulator you chose, you might be led directly to the ScummVM launcher when you try to launch your game for the first time, because it could not be found within the respective `scummvm.ini`. If so, pick *Add Game* in the ScummVM launcher and add the game by browsing to its folder and following on-screen instructions. Afterwards, *Quit* the launcher and try to launch your game again. If it still does not work, go to the *Game Options* menu from within ScummVM, take a look at the *ID* in the *Game* tab and make sure to have the very same ID in your `.scummvm` file and its name.

### Step 6: Scrape media

By default, each ScummVM game will be named after its `.scummvm` file in your EmulationStation GUI. Since this is not very user-friendly, we recommend scraping for artworks and media. Since the scraper will most likely not be able to identify games based on their sometimes pretty cryptic ScummVM IDs, you may need to do scrape **manually** as explained in the [Scraping](../../play/scraping) section.

### Step 7 : Music emulation

!!! info "MT32"
    Music emulation sometime relies on specific MT32 files that need to be provided separately

Once you've sourced the files, put them in the folder`/userdata/bios` like this:
``` bash
/bios
  └─ scummvm/
    └─ extra/
        └─ MT32_CONTROL.ROM
        └─ MT32_PCM.ROM
```

From there:

* Lanch any Scummvm game
* Directly press ++"Start"++ then `Return to launcher`
* From there go to `Global options`
* In the `Audio` pane `Preferred device` > select `MT-32 emulator`
* Quit Scummvm and relaunch the game
* Enjoy the music