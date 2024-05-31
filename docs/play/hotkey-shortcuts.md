# :material-controller: Hotkey shortcuts

Hotkey shortcuts are among the most important basics you need to learn in order to navigate your KNULLI device and play your games. This section will give you an overview over the available hotkey shortcuts.

## The ++"Function"++ button

Each KNULLI-driven device has a dedicated button we refer to as the ++"Function"++ button. Depending on your device, the ++"Function"++ button can be in different places. E.g., for the Anbernic RG35XX H, the button is located at the top right of the device, indicated by the letter *F*. (Sometimes, the ++"Function"++ button is also referred to as the "menu" button, the "FN" button, the "F" button, or the "hotkey".)

The button can be used to trigger a number of shortcuts which will help you control the currently running emulation core.

!!! info "When playing with bluetooth controllers without a ++"Function"++ button, the ++"Select"++ button often can be used as a substitute. However, be aware that in this case the default *select* action of the respective context is *also* triggered when you press the button."

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

## Hotkey shortcuts

All hotkey shortcuts follow the same pattern: Press *and hold* the ++"Function"++ button and press another key to call the respective action as indicated by the table below.

!!! info "If you forgot a shortcut: Don't worry! KNULLI comes with an on-screen manual. At the home screen, press ++"Select"++ to bring up the *Quick access* menu. Here, you will be able to *View user manual*, which contains a list of all shortcuts."

| Shortcut                                        | Action                                           |
| ----------------------------------------------- | ------------------------------------------------ |
| ++"Function"++ + ++"Start"++                    | Quit the game and return to EmulationStation     |
| ++"Function"++ + :material-gamepad-circle-down: | Open the emulator menu of the current core       |
| ++"Function"++ + :material-gamepad-circle-left: | Quick save in the currently selected save slot   |
| ++"Function"++ + :material-gamepad-circle-up:   | Quick load from the currently selected save slot |
| ++"Function"++ + :material-gamepad-up:          | Next save slot                                   |
| ++"Function"++ + :material-gamepad-down:        | Previous save slot                               |
| ++"Function"++ + :material-gamepad-right:       | Fast forward                                     |
| ++"Function"++ + :material-gamepad-left:        | Rewind                                           |
| ++"Function"++ + ++"L1"++                       | Take a screenshot                                |

!!! info "Most hotkey shortcuts work for *most* cores. Even though only savegames from RetroArch cores are integrated into the EmulationStation GUI and can be loaded directly from the menu, most other cores also provide save game slots which can be accessed by the same shortcuts."

!!! info "If you are collecting [Retro Achievements](../retro-achievements) in *hardcore mode*, all save/load fast foward/rewind actions are disabled by definition. However, for *regular* RetroAchievements, saving/loading etc. is enabled."

!!! warning "Games from the [PortMaster](../../systems/portmaster) library are not emulated and therefore do not respond to emulation shortcuts. Do not panic if your PortMaster games do not react to your hotkey shortcuts - this is expected behavior. To find out how to save, load, and exit your PortMaster games, please refer to the game's manual."
