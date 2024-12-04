# :material-image-frame: Bezel Decorations

KNULLI supports a lot of different emulators for a lot of different systems. Many of these systems originally had an aspect ratio that is different from the built-in screen of your KNULLI device. To fill the black void between the border of the screen and the game area, KNULLI supports using *decorations*, also referred to as *bezels* or *bezel decorations*.

!!! warning "Decorations only work with RetroArch cores"

    KNULLI comes with a lot of different emulators. However, bezel decorations currently only work with RetroArch-integrated emulators (libretro cores).

## The default bezel decoration set

Unlike Batocera, KNULLI supports bezel sets with bezels for **more than one** resolution/aspect ratio. Consequently, KNULLI already comes with a default bezel decoration set called **Default-KNULLI**. Default-KNULLI contains bezels for 4:3, 1:1, **and** 16:9 screens! If you enable it, you will have bezel decorations on the built-in screen of your device and you will also have bezel decorations when connecting your device to a TV via HDMI.

Default-KNULLI contains

* 16:9 bezels from the original Batocera bezel set "Console".
* 4:3 bezels by Batocera, [antiKk](https://github.com/antiKk), [drkhrse](https://github.com/drkhrse), [mugwomp93](https://github.com/mugwomp93), and [nvitaterna](https://github.com/nvitaterna).
* 1:1 bezels by Batocera, [Ifan](https://forums.libretro.com/t/dosbox-overlay/19236), and [Vidnez](https://github.com/Vidnez).

You can learn more about the default bezel set from its [GitHub repository](https://github.com/chrizzo-hb/knulli-bezels).

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

