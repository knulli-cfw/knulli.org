# :material-battery-medium: Power Management

Since KNULLI Firefly, the CFW comes with a *Power Management* menu, where you can adjust settings to save some battery life.

## Setting up power management

You will find the *Power Management* settings in the *Device Settings* menu.

* Press ++"Start"++ to bring up the main menu
* Go to *Device Settings*
* Go to *Power Management*

### Battery Saving

This section contains several power saving options to improve your battery life.

!!! warning "Shutdown while in sleep mode"

    Users keep asking us for a way to gracefully shut the device down while it is in sleep mode. **This is not possible.** While the device is in sleep mode, **no code can be run** on the device. Hence, it is **impossible** for us to execute any code that shuts the device down while it is on sleep mode. There is no point in asking or waiting for this feature - it simply cannot be done.

    Similarly, if you set **mode** to *suspend* in the *Power Management* settings, the **extended mode** will never be reached since the device will already be asleep.

* **Mode** allows you to set the first stage battery saving mode. The device will automatically go to this mode after a given idle time has passed.
    * *Dim* simply dims the screen and mutes the audio output.
    * *Display off* simply turns the screen off entirely and mutes the audio output.
    * *Suspend* puts the device into sleep mode (which will render the **Extended Mode** unreachable).
    * *Shutdown* puts the device into sleep mode (which will render the **Extended Mode** unreachable).
    * *None* disables first stage battery saving mode.
* **Idle Time** sets the idle time which needs to pass before the devices goes into the battery saving **Mode**.
* **Extended Mode** allows you to set the second stage battery saving mode. The device will automatically go to this mode after the extended idle time has passed. Be aware that extended mode can never be reached if the device was already put on suspend or shutdown by the first **Mode**.
* **Extended Idle Time** sets the idle time which needs to pass before the devices goes into **Extended Mode**. This timer only begins after the device was put into first stage battery saving **Mode**.
* **Aggressive Battery Saver** will attempt to optimize battery life further by applying some additional power-saving measures while the system is idle.
* **Lid Close Mode** is an optional battery save mode which is only available on devices with detectable lid closing (e.g., the RG35XX SP). When closing the lid, the respective mode will be applied.
    * *Display off* simply turns the screen off entirely and mutes the audio output. (Key presses will still wake up the device!)
    * *Suspend* puts the device into sleep mode (which will render **Mode** and **Extended Mode** unreachable).
    * *Shutdown* shuts the device down (which will render **Mode** and **Extended Mode** unreachable).

!!! info "KNULLI saves your progress on shutdown (if the emulator supports auto-save)"

    RetroArch cores support auto-save when exiting the emulator. You can enable this option in the *Game Settings* menu. If you trigger a shutdown by holding the power button or closing the lid while you are playing a game with a RetroArch core and auto-save enabled, KNULLI will exit the emulator gracefully and let it perform auto-save before the device is shut down.
