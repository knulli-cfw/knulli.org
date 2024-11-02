# :material-image-frame: Bezel Decorations

KNULLI supports a lot of different emulators for a lot of different systems. Many of these systems originally had an aspect ratio that is different from the built-in screen of your KNULLI device. To fill the black void between the border of the screen and the game area, KNULLI supports using *decorations*, also referred to as *bezels* or *bezel decorations*.

!!! warning "Decorations only work with RetroArch cores"

    KNULLI comes with a lot of different emulators. However, bezel decorations currently only work with RetroArch-integrated emulators (libretro cores).

## The default bezel decoration set

Unlike Batocera, KNULLI supports bezel sets with bezels for **more than one** resolution/aspect ratio. Consequently, KNULLI comes with a default bezel decoration set called **Default-KNULLI** which contains bezels for 4:3 **and** 16:9 screens. If you activate it, you will have bezel decorations on the built-in screen of your device and you will also have bezel decorations when connecting your device to a TV via HDMI.

The default bezel decoration set is based on the default Batocera bezel decoration set for 16:9 screens. However, in includes some additional 4:3 bezel decorations to make the set work for the built-in 4:3 screen of your handheld device, too. You can learn more about the default bezel set from its [GitHub repository](https://github.com/chrizzo-hb/knulli-bezels).

!!! warning "No support for 1:1 screens, yet"

    The **Default-KNULLI** bezel set currently does **not** support screens with a **1:1** aspect ratio. Consequently, the **Default-KNULLI** bezel set does **not** work on devices with a 1:1 screen like the Anbernic RG CubeXX.

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

## Adding more bezel decoration sets

If you do not like the **Default-KNULLI** bezel decoration set, you can find other compatible sets on the internet or even compile a set of your own. Before you attempt to do so, please be aware that most Batocera bezel decoration sets where created with a specific aspect ratio in mind.

### Mind the aspect ratio

Most bezel decorations are made for a **specific aspect ratio**. If the aspect ratio of the screen is **different** from the aspect ratio of the bezel decoration, either the decoration will not be applied at all or the result will most likely contain odd placement of decorations and the actual game content.

To make sure a bezel decoration set works fine on the screen you want to use it on, make sure that the **aspect ratio** of the decorations **matches** the aspect ratio of the **screen**.

Be aware that most **Batocera** bezel sets aim at an aspect ratio of **16:9**, to provide decorations for the void around the game when playing on a **TV screen**. Those bezels will **not** work on your device!
    
For example, the devices of Anbernic's RG35XX H/Plus/SP series have a 3.5" screen with an aspect ratio of **4:3**, hence, a lot of well-known bezel decoration packs which have been designed for 19:6 displays (e.g., The Bezel Project) will **not** work on the built-in screen of those devices.

### Bezel decorations for 4:3 displays

Even though most bezel decoration packs are specifically designed for 16:9 displays, there are a few options for 4:3 displays, too.

#### drkhrse/antiKk

Some bezels which were originally created by [drkhrse](https://github.com/drkhrse) and [antiKk](https://github.com/antiKk) have been adapted by [nvitaterna](https://github.com/nvitaterna) to work on Batocera-based handhelds with 4:3 displays. To install this set on your Knulli device

* download the bezel pack from the GitHub repository of nvitaterna, either by
    * visiting the [GitHub repository](https://github.com/nvitaterna/batocera_4_3_handheld_bezels) and finding *Download ZIP* in the *Local* menu,
    * or just clicking [here](https://github.com/nvitaterna/batocera_4_3_handheld_bezels/archive/refs/heads/main.zip).
* unzip the file (e.g. with [7-Zip](https://7-zip.org/)).
* find the `batocera_4_3_handheld_bezels` folder **inside** the `decorations` folder you just unzipped.
* copy the **entire** `batocera_4_3_handheld_bezels` folder into the `decorations` folder of your  [userdata folder](../../../play/add-games/game-storage).

The bezel pack should now be installed and ready to use. However, to apply it, you must set it up as explained in the [Apply bezel decorations](#apply-bezel-decorations) section.

