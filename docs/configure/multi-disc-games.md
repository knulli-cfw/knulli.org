# :material-disc: Multi-Disc Games

Some video games for disc-based consoles, especially those with lots of cinematics, come on more than one disc. Once you [added](../../play/add-games) a multi-disc game to your KNULLI device, each disc of the game will show up as its own game. Of course, this adds unnecessary clutter to your game list. Therefore, KNULLI comes with a feature that allows you to hide **all** the discs of the multi-disc game and display a **playlist** instead.

All you have to do is create a **`m3u` playlist** file within the folder for the ROMs of the given system and add **relative path references** to all the **disc images** in the **correct order**.

If you feel unsure how to achieve that, follow this guide. It will take you through the process step by step.

!!! info "Make sure that 'Ignore Multi-File Disk Content' is turned on"

    KNULLI comes with a setting that allows to hide or show the content (the individual discs) of multi-disc games. By default, hiding individual discs is turned **on**. However, if you have issues with individual discs unwantedly showing up on your Knulli device, make sure this feature is turned **on**.

    Press *Start* to bring up the main menu, go to *System Settings*, then *Frontend Developer Options*, where you find the option *Ignore Multi-File Disk Content (CUE/GDI/CCD/M3U)*. Make sure it is turned **on**. To apply any change you made here, you will need to update your gamelists by going to *Game Settings* from the main menu and select *Update Gamelists*.

    This option will **hide** every disc file that is **correctly referenced** in a **playlist**. If your game discs still show up, there is likely something wrong with your `m3u` file.

## How to store multi-disc game files

There are several possibilities how to store multi-disc game files. Let's take the PlayStation classic *Metal Gear Solid* as an example.

As thoroughly explained in the [Add Games](../../play/add-games) section, all your games have to be stored in your userdata/share folder in a subfolder of `roms` that corresponds to the system the game was developed for - in this case, `psx`, the folder for PlayStation games.

### Top level of the system's ROMs folder

Some users prefer to add their multi-disc games to the ROMs folder like any other game:

``` bash
/roms
 └─ psx/
    ├─ Metal Gear Solid (Disc 1).chd
    └─ Metal Gear Solid (Disc 2).chd
```

### Game-specific subfolder of the system's ROMs folder

Some users prefer to create a subfolder for every multi-disc game and drop all the files there:

``` bash
/roms
 └─ psx/
    └─ Metal Gear Solid
       ├─ Metal Gear Solid (Disc 1).chd
       └─ Metal Gear Solid (Disc 2).chd
```

### "Hidden" subfolder of the system's ROMs folder

some users prefer to put all their multi-disc games in a subfolder called `hidden` (or something similar):

```
/roms
 └─ psx/
    └─ hidden
       ├─ Metal Gear Solid (Disc 1).chd
       └─ Metal Gear Solid (Disc 2).chd
```

## Creating the playlist

After you stored the files on your KNULLI device, you can now create a **playlist** to group all the discs that belong to a single game into a single file.

For that purpose, create a plain text file with the  **file extension** `.m3u`. Ideally, the `m3u` file should be named like the game and its discs, so for the example given above, the file name should be `Metal Gear Solid.m3u`.

Following the above examples, you now have two options where to store the **playlist file**. You can either store it on the top level of the  `roms/psx` folder or **optionally** in the same subfolder you might have stored your game files in. Depending on where your game files and your playlist file are stored and how they relate to each other, you now need to **edit** the playlist file:

### Playlist and game files in the same folder

If you decided to store your game files and your playlist file in the **same folder**, make sure that your `m3u` refers to the game files directly **without any path**. 

For the examples shown above, your `Metal Gear Solid.m3u` file should contain

```
Metal Gear Solid (Disc 1).chd
Metal Gear Solid (Disc 2).chd
```

if it is stored in the same folder as `Metal Gear Solid (Disc 1).chd` and `Metal Gear Solid (Disc 1).chd`.

### Playlist and game files in different folders

If you decided to store your game files and your playlist file in **different folders**, make sure that your `m3u` **includes the path** when referring to the game files.

For the examples shown above, your `Metal Gear Solid.m3u` file should contain

```
Metal Gear Solid/Metal Gear Solid (Disc 1).chd
Metal Gear Solid/Metal Gear Solid (Disc 2).chd
```

if your `Metal Gear Solid.m3u` is stored in `roms/psx` and your game files are stored in `roms/psx/Metal Gear Solid`.
