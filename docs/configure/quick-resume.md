# :material-replay: Quick Resume

!!! info "Sleep modes on low-powered handhelds are often inefficient"

    Most KNULLI-driven devices are low-powered handhelds with very inefficient suspend modes. Unlike modern smartphones and computers, the KNULLI-compatible handheld devices usually consume **a lot** of battery power just to keep the memory alive. We strongly recommend **not** to rely on sleep modes for a long period of time. Instead, **shut the device down gracefully**. **Quick resume mode** will return right to your game the next time your device is powered on.


If you shut the device down gracefully while you are playing (e.g., by holding the power button for two seconds), KNULLI can automatically save your progress (if the current emulator supports auto-save). Additionally, KNULLI can memorize which game you played last and launch it automatically when you turn the device back on. If auto save/load is enabled, KNULLI will even load the auto-save slot so that you can pick up your game right where you left, even after shutting the device down completely.

To enable quick resume mode,

* press ++"Start"++ to bring up the main menu
* go to *Game Settings*
* enable *Auto Save/Load*
* enable *Quick Resume Mode*

!!! warning "Not every emulator/system supports auto save/load"

    Be aware that standalone games (e.g., ports) and several emulators do not have any auto-save capabilities. Those games will **still be reloaded** after boot when quick resume mode is turned on. However, you will need to take care of saving and loading yourself! RetroAchievements in Hardcore Mode will also prevent Quick Resume.

### Troubleshooting

On the rare occasion that your device cannot load the game and/or you get stuck in a reboot loop, you can manually disable *Quick Resume Mode* by making a modification to KNULLI's main configuration file. This file can be found in the following location: `system/batocera.conf`.

You need to remove the lines corresponding to these 3 values, which appear near the bottom of the configuration file:

* `global.quickresume`
* `bootgame.cmd`
* `bootgame.path`

Once you have removed the 3 offending lines, save the configuration file, reload the micro SD into your device, and power it on. Now that Quick Resume Mode has been manually disabled, your device will now boot directly into EmulationStation.

!!! info "Quick Resume Mode must be manually re-enabled to use the feature again"

    You must manually go into the settings menu and re-enable Quick Resume Mode to use this feature again after following the above steps to disable it. It is also advised to ensure *Auto Save/Load" is also enabled should you want to re-enable this feature.
