# :material-fast-forward: Game Settings

!!! info "Attention please, RetroArch know-it-alls!"

    If you have used **other handheld CFWs** before, you might feel like this section does not apply to you, because you know how to set up **RetroArch** to your liking. Well, this section is **especially for you**.

    Whenever a game is launched in KNULLI, **all** emulator-specific configuration files are **purged** and new files are generated, based on the settings you made in **EmulationStation**. Hence, settings you make within the emulator GUI at runtime will be of **no consequence**, they will be lost when you re-start the game.

    Yeah, yeah, don't worry: **Advanced RetroArch users** will still be able to set up their games directly in RetroArch. However, to do so, you must rely on [**overrides**](/../..configure/retroarch/shaders) and [**remap files**](/../..configure/retroarch/controls) or try your luck with manually editing `batocera.conf`. Be aware that certain KNULLI features (e.g., using a multi-resolution bezel set to have a bezel decoration on the built-in screen **and** when playing via HDMI out without ever having to manually switch bezel decorations) are **not compatible** with overrides.

    Making your settings the KNULLI way certainly has advantages. This section will teach you how to set up games with KNULLI.

After you installed KNULLI and added your games, KNULLI should give you a pretty good out-of-the-box experience. Still, maybe you are interested in exploring options to customize your gaming experience. This might be about personal preferences (like trying integer scaling, disabling or customizing bezel decorations, applying shaders, etc.) or even about trying entirely different emulators. Some systems like N64 are really hard to emulate, so some emulators might perform better with one game while another emulator performs better with another game. In this section, you will learn how to set up games with KNULLI.

!!! info "This section is not about scraping"

    This section is **not** about adding metadata and cover art (if you are looking for that, have a look at the [Scraping](../scraping) section).

## The KNULLI philosophy

One of the core philosophies behind KNULLI is to create a comfortable user experience especially for users who are new to the world of retro gaming. Simply put, we do not see a need to overwhelm users with all the different emulators and their GUIs and config files and settings. Instead, KNULLI comes with a GUI that allows to set the most popular settings for most emulators directly in EmulationStation, the KNULLI GUI.

We want to give you a user experience that is comparable to modern console operating systems, where all games are treated the same and all settings are made through the same GUI. For users who already have experience from using other CFWs, this often poses a challenge because they cannot simply re-create their favorite RetroArch settings - they need to learn something new.

For new users, the KNULLI-way should be pretty intuitive. This section is meant to pick up both and give you a head start.

## Hierarchical settings

In KNULLI, a lot of game-related settings can be set to ***"auto"***. *"auto"* **always** means to **inherit** a setting from a settings layer **above** the one you are currently looking at. The possible layers are

* **KNULLI defaults** - settings we consider the best choice for most users.
* **Global settings** - settings which are set up **globally**. To edit global settings, press ++"Start"++ to bring up the main menu, then head to *Game Settings*.
* **System settings** - settings which are set up for an **emulated system**, for example for all N64 games, all PSP games, etc. To edit system settings, you have two options:
    * Press ++"Start"++ to bring up the main menu, then head to *Game Settings*, then head to *Per System Advanced Configuration* and pick the system you want to set up.
    * Go to the game list of the respective system, press ++"Select"++, then head to *Advanced System Options*.
* **Per-game settings** - settings which are up for a **single game**, for example "Super Mario World". To edit per-game settings, navigate to the respective game and **press and hold** the button which launches the game (either :material-gamepad-circle-right: or :material-gamepad-circle-down:, depending on your setup), then head to *Advanced Game Options*.

You will find that by default, most of those settings are set to *auto* on every layer, hence the KNULLI defaults are applied. If you want to change a setting, first consider for which scope you want to make the change, then make it **on the lowest level possible**.

For example, if you want to enable *Toggle Fast Forward* only for "Super Mario World", just set it in **per-game** settings. If you want to apply it to all SNES games, set it in **system** settings. If you want to apply it to **all games**, set it in the **global** game settings.

!!! danger "Not every emulator supports every setting"

    Some settings, which can be set up globally for convenience, aren't supported by all emulators. Consequently, making a setting on a higher layer does not always guarantee that the emulator you are using or the device you are using actually supports the feature.

    For example, setting some global scaling options will have no effect on some N64 emulators which always go full screen, no matter what you set up. This doesn't mean you did something wrong - it usually just means the setting isn't applicable in the usecase you are looking at.

## Switching emulators

KNULLI comes with a lot of emulators. Many systems even have a selection of emulators to choose from. For every system, we made a default pick that we thought is most suitable for most games and/or the capabilities of low-powered handhelds. However, as explained above, trying different emulators might be a good idea when a game doesn't work as expected.

Mind that emulators can only be switched on the **system** and **per-game** layer, obviously. You cannot pick a global emulator because there is no single emulator that's capable of covering all systems KNULLI supports.

To switch the emulator for a system or game, go to either **system** or **per-game** settings and find *Emulator*. Here, you can pick your favorite among all available emulators for the respective system.

Be aware that sometimes, when switching an emulator, emulator-related settings also change because some emulators have different options than others. Explore the settings and try them out.

!!! info "Libretro cores and standalone emulators"

    When discussing emulators, we distinguish **"libretro cores"** (also referred to as **"RetroArch cores"** and **standalone emulators**. This is due to the great popularity and the great integration of **RetroArch/libretro** into the KNULLI OS. A **standalone** emulator is an emulator that isn't included in libretro, therefore it does not come with RetroArch features.

    For example, many standalone emulators do **not** support auto-save/load. They also will not give you a save game screenshot. Some cannot even have their save games integrated in ES at all.

    For example, if you play N64 with *Mupen64plus: Rice*, you will be able to save and load your game state with ++"Function"++ + :material-gamepad-circle-left:/:material-gamepad-circle-up:. However, your saves will **not** appear in ES and you will not be able to drop into the game right at the save state.

    However, standalone emulators are still fully functional and work just fine. You just gotta get used to slightly different behavior and a slightly less comfortable integration into EmulationStation.
