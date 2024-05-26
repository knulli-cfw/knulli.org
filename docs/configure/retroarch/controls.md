# Modifying controls in RetroArch

For several systems, KNULLI employs emulation cores from the RetroArch library (*libretro*). You will find exhaustive documentation on how to use RetroArch in the excellent [RetroArch documentation portal](https://docs.libretro.com). However, to give you a kick-start, here's how to remap controls for your RetroArch-driven emulation systems on your KNULLI device.

## Remap by game or by core

If you want to remap controls for your retroArch-driven games, first you got to decide, whether you want to change controls for the *core* or just for a single *game*.

When launching a game with a RetroArch core, RetroArch first checks for a *game* remap file, then for a *core* remap file. If neither could be found, RetroArch relies on its default settings.

Changing controls for an entire *core* might come in handy if you want to change the key mappings for every game which is run by that core, e.g. for globally swapping ++"B"++ and ++"Y"++ and ++"A"++ and ++"B"++ on a Gameboy core to make default Gameboy controls more similar to default SNES controls and not having to make the same change for every single game again.

Changing controls for a single *game* will help you to adapt controls for a single game without messing up controls for every other game of the same core.

## Remap your controls

After you made a decision on whether you want a *game* or *core* specific remapping, hold ++"F"++ (the function button) and press ++"B"++ to bring up the RetroArch menu while playing the game.

- Go to the *Controls* section and select *Manage Remap Files*.
- Check if there is already an *Active Remap File* indicated at the top of the menu and if that is the remap file you would like to edit.
    - If the file is named like the game, it is a *game* remap file.
    - If the file is named like the system it is a *core* remap file.
    - If the file is named `common.rmp` it is the *default* remap file. (You should not try to edit this one.)
- If the default remap file is selected (or the active remap file is not the remap file you want to use),
    - pick *Save Game Remap File* to create a game remap file or
    - pick *Save Core Remap File* to create a core remap file.
- If you want to permanently delete the current remap file
    - pick *Remove Game Remap File* to **permanently delete** the game remap file or
    - pick *Remove Core Remap File* to **permanently delete** the core remap file.
- After you made sure the *Active Remap File* indicates the file you want to use and modify,
    - return the previous section (*Controls*),
    - pick the control port you want to remap (for the controls integrated in your KNULLI device, use *Port 1 Controls*), and
    - find the input of your device that you want to reassign (first/left column) and assign it to the desired input of the emulated system (second/right column).

Once you are done remapping, return to your game. All changes you made will be stored in the currently active remap file and will be automatically restored when you launch the game again.