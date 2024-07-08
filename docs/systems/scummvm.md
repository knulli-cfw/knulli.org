# :material-cursor-default-click-outline: ScummVM

ScummVM is a collection of virtual machines and re-implementations of game engines for point-and-click adventure games. KNULLI includes ScummVM by default. If you want to find out if your games can be played with ScummVM, we suggest to have a look at the [compatibility chart at the ScummVM website](https://www.scummvm.org/compatibility/).

!!! info "Point and click"

    By default, the cursor of your ScummVM game can be moved with the **dpad** and/or the **left analog stick** while ++"L1"++ and ++"R1"++ will correspond to left and right click. The ++"Start"++ button will bring up the ScummVM main menu which will allow you to save, load, and edit some settings.
    
    However, KNULLI also supports connecting a mouse via Bluetooth, as explained in the [Controls](../../configure/controls) section.

## Adding ScummVM games

Unlike most other systems, your ScummVM games need a little adjustment to be run on your KNULLI device.

### Step 1: Find out the game ID

Within ScummVM, every supported game has an **ID**. You will need to find out the ScummVM ID of your game in order to run it on KNULLI. You can do so by opening *ScummVM* on your local PC and have a look at the *Game* tab in the *Game Settings* of each game. Alternatively, you can check out the [compatibility chart at the ScummVM website](https://www.scummvm.org/compatibility/). You will find the game ID in the *ScummVM ID* column. (You only want the part after the colon (`:`), e.g., `comi` from `scumm:comi` for "The Curse Of Monkey Island".)

!!! info "Some games exist in different versions"

    Be aware that some games have different IDs for different versions, e.g., localized versions, usually indicated by a suffix to the original game ID. For example, the main (US) version of "Day Of The Tentacle" has the ID `tentacle`, the German version has the ID `tentacle-de`.

### Step 2: Add your game files

In the [`userdata` folder](../../play/add-games/game-storage), go to `roms`, then go to `scummvm`. Inside this folder, create a subfolder for every game you want to add. Even though you can name the folder however you want, we suggest to name the folder like the game ID, e.g. `roms/scummvm/comi`.

Depending on the game, you will need some files from your original copy of the game to run it with ScummVM. Have a look at the [Supported Games section of the ScummVM wiki](https://wiki.scummvm.org/index.php?title=Category:Supported_Games) to figure out, which files you will need to run your game and add them to the folder you just created, just as explained in the ScummVM wiki.

Additionally, create an empty text file in the folder of each game and name it `[ScummVM game ID].scummvm`, e.g., `comi.scummvm` for "The Curse Of Monkey Island" or `tentacle-de.scummvm` for the German version of "Day Of The Tentacle".

### Step 3: Update gamelists

Press ++"Start"++ to bring up the main menu, go to *Game Settings* and pick *Update Gamelists* to scan for your newly added games. Afterwards, you should find your ScummVM games in the *ScummVM* category.

### Step 4: Scrape media

By default, each ScummVM game will be named after its `.scummvm` file. Since this is not very user-friendly, we recommend scraping for artworks and media. Since the scraper will most likely not be able to identify games based on their sometimes pretty cryptic ScummVM IDs, you may need to do scrape **manually** as explained in the [Scraping](../../play/scraping) section.
