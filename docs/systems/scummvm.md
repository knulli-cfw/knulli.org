# :material-cursor-default-click-outline: ScummVM

ScummVM is a collection of source ports and reimplementations of game engines for point-and-click adventure games. KNULLI includes ScummVM by default. If you want to find out if your games can be played with ScummVM, we suggest having a look at the [compatibility chart at the ScummVM website](https://www.scummvm.org/compatibility/).

Within KNULLI, ScummVM is considered a "system" which appears on your home screen just like SNES, PlayStation, etc. However, technically, ScummVM is **not** a system. ScummVM supports a lot of different games which have been developed for different systems originally, such as DOS, Windows, Macintosh, etc.

!!! info "Point and click"

    By default, the cursor of your ScummVM game can be moved with the **d-pad** and/or the **left analog stick** while ++"L1"++ and ++"R1"++ will correspond to left and right click. The ++"Start"++ button will bring up the ScummVM main menu which will allow you to save, load, and edit some settings.
    
    KNULLI also supports connecting a mouse via Bluetooth, as explained in the [Controls](../../configure/controls) section. However, only the **libretro-integrated** variant of ScummVM currently accepts Bluetooth mouse control input.

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

Unlike most other systems, your ScummVM games need a little adjustment to be run on your KNULLI device. This guide will help you to set up your ScummVM games properly. To do so, it is required that you understand how to determine the **launcher ID** of a ScummVM game.

### Step 1: Add your game files

Technically, ScummVM games are **not** ROMs. However, KNULLI expects your ScummVM games in the `scummvm` subfolder of the `roms` folder.

To add your ScummVM games, head to your [`userdata` folder](../../play/add-games/game-storage), go to `roms`, then go to `scummvm`. Inside this folder, **create a subfolder** for every **game** you want to add. You can name the folder however you want.

Depending on the game, you will need some files from your original copy of the game to run it with ScummVM. Have a look at the [Supported Games section of the ScummVM wiki](https://wiki.scummvm.org/index.php?title=Category:Supported_Games) to figure out which files you will need to run your game and add them to the folder you just created, just as explained in the ScummVM wiki.

### Step 2: Determine the launcher IDs of your games

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

### Step 3: Create the ScummVM files

Make sure that you have added all the game files for your games and determined their respective launcher IDs. Now, to make the games show up in EmulationStation, you need to create the ScummVM files for every game.

* Go to the folder of your game (e.g., `roms/scummvm/sword1`).
* Create a new text file in the game folder.
* Make sure the file name ends with `.scummvm` (e.g., `Broken Sword.scummvm`).
* Edit the text file and insert the **launcher ID** into the text file (e.g., `sword1-win-de`).

### Step 4: Update gamelists

Press ++"Start"++ to bring up the main menu, go to *Game Settings* and pick *Update Gamelists* to scan for your newly added games. Afterwards, you should find your ScummVM games in the *ScummVM* category.

### Step 5: Scrape media (optional)

By default, each ScummVM game will be named after its `.scummvm` file in your EmulationStation GUI. However, we recommend scraping for artworks and metadata. If the scraper is unable to identify games automatically, you may need to do scrape **manually** and use the search function as explained in the [Scraping](../../play/scraping) section.

## Roland MT-32 music

Some of the engines provided by ScummVM support Roland MT-32 midi music. However, unlike other soundcard emulators like AdLib or CMS, Roland MT-32 music requires some additional files that need to be provided separately.

If you want to use Roland MT-32 music in your ScummVM games, you will have to provide the required files yourself. Once you've sourced the files, put them in the `bios` folder of your [`userdata` folder](../../play/add-games/game-storage) like this:

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
