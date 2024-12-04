# :material-battery-medium: Power Management

Since KNULLI Firefly, the CFW comes with a *Power Management* menu, where you can adjust settings to save some battery life. To reach the 
*Power Management* menu, press ++"Start"++ to bring up the main menu, head to *System Settings*, then *Power Management*.

## Battery Saving Modes

KNULLI comes with 3 different battery saving modes: *Dim* dims the screen to lower its battery consumption, *Suspend* puts the device in sleep mode, and *Shutdown* shuts the device down gracefully.

The selected battery saving mode will kick in once the user has been idle for a given amount of time which can be set up via *Idle Time*. You will be able to set up values between 1 and 60 minutes.

## RG35XX SP Lid Support

The RG35XX SP is a clamshell device. KNULLI supports either going to **sleep mode** or **shutting down** the device when closing the lid. **By default**, closing the lid of the RG35XX SP will put the device in **sleep mode**. However, sleep modes on the Anbernic devices of the H700 series are not very efficient.

If you want to switch the lid behavior to **shutdown**, press ++"Start"++ to bring up the main menu, head to *System Settings*, then *Services*. There you will find a service called *LID_SHUTDOWN*. Enable this service to shut the device down automatically when you close the lid.

!!! info "KNULLI saves your progress on shutdown (if the emulator supports auto-save)"

    RetroArch cores support auto-save when exiting the emulator. You can enable this option in the *Game Settings* menu. If you trigger a shutdown by holding the power button or closing the lid while you are playing a game with a RetroArch core and auto-save enabled, KNULLI will exit the emulator gracefully and let it perform auto-save before the device is shut down.