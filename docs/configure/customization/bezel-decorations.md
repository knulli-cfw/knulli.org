# :material-image-frame: Bezel Decorations

KNULLI supports a lot of different emulators for a lot of different systems. Many of these systems originally had an aspect ratio that is different from the built-in screen of your KNULLI device. To fill the black void between the border of the screen and the game area, KNULLI supports using *decorations*, also referred to as *bezels* or *bezel decorations*.

!!! warning "Decorations only work with RetroArch cores"

    KNULLI comes with a lot of different emulators. However, bezel decorations currently only work with RetroArch-integrated emulators (libretro cores).

## Mind the aspect ratio

Most bezel decorations are made for a **specific aspect ratio** of **16:9**, to provide a decoration for the void around the game when playing on a **TV screen**. However, if the screen of your handheld has a different aspect ratio, those bezels will **not** work on your device!
    
For example, the devices of Anbernic's RG35XX H/Plus/SP series have a 3.5" screen with an aspect ratio of **4:3**, hence, a lot of well-known bezel decoration packs which have been designed for 19:6 displays (e.g., The Bezel Project) will **not** work on the built-in screen of those devices.

### Bezel decorations for 4:3 displays

Even though most bezel decoration packs are specifically designed for 16:9 displays, there are a few options for 4:3 displays, too.

#### drkhrse/antiKk

Some bezels which were originally created by [drkhrse](https://github.com/drkhrse) and [antiKk](https://github.com/antiKk) have been adapted by [nvitaterna](https://github.com/nvitaterna) to work on Batocera-based handhelds with 4:3 displays. To install this set on your Knulli device

* download the bezel pack from the GitHub repository of nvitaterna, either by
    * visting the [GitHub repository](https://github.com/nvitaterna/batocera_4_3_handheld_bezels) and finding *Download ZIP* in the *Local* menu,
    * or just clicking [here](https://github.com/nvitaterna/batocera_4_3_handheld_bezels/archive/refs/heads/main.zip).
* unzip the file (e.g. with [7-Zip](https://7-zip.org/)).
* find the `batocera_4_3_handheld_bezels` folder **inside** the `decorations` folder you just unzipped.
* copy the **entire** `batocera_4_3_handheld_bezels` folder into the `decorations` folder of your  [userdata folder](../../../play/add-games/game-storage).

The bezel pack should now be installed and ready to use. However, to apply it, you have to set it up as explained in the [Apply bezel decorations](#apply-bezel-decorations) section.

## Apply bezel decorations

If you want to apply bezel decorations, you can do this either globally, by system, or by game. Since game settings override system settings and system settings override global settings, it is possible to globally set a specific bezel pack and, at the same time, pick a different one for a specific system, or even just a single game.

!!! info "EmulationStation does the work for you"

    You might be used to setting up bezels directly within RetroArch. On your KNULLI device, EmulationStation will take care of this for you. Do not attempt to set up bezel decorations from within RetroArch.

### Global bezel decorations

To apply a set of bezel decorations globally

* press ++"Start"++ on the home screen to bring up the main menu.
* go to *Game Settings* and open *Decorations*.
* select the *Decoration Set* of your choice.
* leave the menu to apply the change.

### System bezel decorations

To apply a set of bezel decorations to a system

* press ++"Start"++ on the home screen to bring up the main menu.
* go to *Game Settings* and open *Per System Advanced Configuration*.
* select the system you want to apply the bezels to.
* open *Decorations*.
* select the *Decoration Set* of your choice. (*Auto* means to inherit global settings.)
* leave the menu to apply the change.

### Game bezel decorations

To apply a set of bezel decorations to a single game

* find the game on your device by browsing your game lists.
* **hold** the button that launches your games (usually ++"A"++ or ++"B"++).
* go to *Advanced Game Options* and open *Decorations*.
* select the *Decoration Set* of your choice. (*Auto* means to inherit global/system settings.)
* leave the menu to apply the change.
