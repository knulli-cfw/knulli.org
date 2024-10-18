# :material-controller: Basic Inputs

This section will give you an overview over the basic inputs on your device. Additionally, it will help you understand the **terminology** which is used throughout this wiki and within the retro gaming community.

## The face buttons

![Face buttons](/_inc/images/face-buttons.png){ align=right }

Most KNULLI-compatible handhelds have a set of face buttons - usually on the right side of the device. On most devices, you have four face buttons. Depending on your device and/or controller, the buttons may have different labels.

KNULLI mostly follows the labeling system known from SNES and the Anbernic devices. However, the buttons are sometimes also referred to by their respective directions to avoid confusion for users of PlayStation or Xbox controllers.

### Face buttons on different systems

| KNULLI  | Location                        |Direction | PS      | XBOX    |
| ------- | ------------------------------- | ------- | ------- | ------- |
| ++"X"++ | :material-gamepad-circle-up:    | North     | ++"△"++ | ++"Y"++ |
| ++"A"++ | :material-gamepad-circle-right: | East      | ++"○"++ | ++"B"++ |
| ++"B"++ | :material-gamepad-circle-down:  | South     | ++"✕"++ | ++"A"++ |
| ++"Y"++ | :material-gamepad-circle-left:  | West      | ++"◻"++ | ++"X"++ |

!!! info "By default, KNULLI follows the control scheme of Nintendo devices in all menus: ++"A"++ for *OK/confirm* and ++"B"++ for *cancel/back*. However, if you feel more familiar with the PlayStation scheme, press ++"Start"++ to bring up the main menu, go to *System settings* and find *Frontend Developer Options*. Here you will find a toggle to *Switch confirm & cancel buttons in EmulationStation*."

## The ++"Function"++ button

Each KNULLI-driven device has a dedicated button we refer to as the ++"Function"++ button. Depending on your device, the ++"Function"++ button can be in different places. E.g., for the Anbernic RG35XX H, the button is located at the top right of the device, indicated by the letter *F*. (Sometimes, the ++"Function"++ button is also referred to as the "menu" button, the "FN" button, the "F" button, or the "hotkey".)

The button can be used to trigger a number of shortcuts which will help you control the currently running emulation core. Learn more about KNULLIs default shortcuts in the [Hotkey Shortcuts section](../hotkey-shortcuts).

!!! info "Select substitutes as function button on many external controllers"

    When playing with Bluetooth controllers without a ++"Function"++ button, the ++"Select"++ button often can be used as a substitute. However, be aware that in this case the default *select* action of the respective context is *also* triggered when you press the button.


## The ++"Power"++ button

When your device is turned off, the power button can be used to turn on your KNULLI device as explained in the manual of your device. Once your Knulli device is turned on

* **tap** the **power button** once to switch into **sleep mode** (depending on your device, there might still be a lot of power consumption in sleep mode).
* **hold** the **power button** for **2 seconds** (until the device vibrates) to do a normal **shutdown**.
    * All system settings you made since you last booted your device will be saved automatically.
    * If you are playing a game with a RetroArch core, your game will be saved automatically.
    * If you are playing a game with a standalone emulator your game will **not** be saved automatically.
* **hold** the **power button** for **5 or more seconds** to **cut the power off**, overriding the normal shutdown.
    * **Nothing** will be saved - this is meant as a last resort when your device is frozen!
* **hold** the ++"Function"++ button and **tap** the **power button** to switch between LED modes:
     * LED always on (default)
     * LED turns off while playing (LED blinks to confirm)
     * LED always off
     * The LED mode will reset to default after each reboot/shutdown.
     
### Clamshell lid

If your device is a clamshell device with a lid (e.g., Anbernic RG35XX SP), you may

* close the lid to **enter sleep mode**.
* open the lid to **return** from **sleep mode**.
