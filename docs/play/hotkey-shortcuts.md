# :material-controller: Hotkey Shortcuts

Hotkey shortcuts are among the most important basics you need to learn in order to navigate your KNULLI device and play your games. This section will give you an overview over the available hotkey shortcuts.

!!! warning "Customizing shortcuts"

     KNULLI attempts to provide the best possible out-of-the-box user experience. For that reason, KNULLI comes with pre-defined hotkeys which apply to (almost) **every emulator** KNULLI comes with.
     
     It is possible to **customize** hotkeys from the KNULLI GUI for **RetroArch-integrated emulators**. You can find instructions in the [RetroArch section](../../configure/retroarch/custom-hotkey-shortcuts). However, please be aware that those customizations will **only** apply ro RetroArch cores.
     
     Many **standalone** emulators **cannot** be configured at runtime. Instead, hotkeys have to be defined on the **source-code level** and cannot be overriden via configuration.

All hotkey shortcuts follow the same pattern: Press *and hold* the ++"Function"++ button and press another key to call the respective action as indicated by the table below. If you cannot locate the function button on your device, find help in the [Basic Inputs section](../basic-inputs).

!!! info "On-screen manual"

     If you forgot a shortcut: Don't worry! KNULLI comes with an on-screen manual. At the home screen, press ++"Select"++ to bring up the *Quick access* menu. Here, you will be able to *View user manual*, which contains a list of all shortcuts.

## KNULLI Hotkey Shortcuts

| Shortcut                                         | Action                                           |
| ------------------------------------------------ | ------------------------------------------------ |
| ++"Function"++ + ++"Start"++ (tap)               | Quit the game and return to EmulationStation     |
| ++"Function"++ + ++"Start"++ (hold 5 seconds)    | Quit any application and force restart of EmulationStation |
| ++"Function"++ + ++"Select"++                    | **Only on devices without analog sticks:** Toggle between mapping either the D-pad or an analog stick to the D-pad (e.g., for playing N64 or moving the touch cursor in NDS) |
| ++"Function"++ + :material-gamepad-circle-down:  | Open the emulator menu of the current core       |
| ++"Function"++ + :material-gamepad-circle-right: | Reset system                                     |
| ++"Function"++ + :material-gamepad-circle-left:  | Quick save in the currently selected save slot   |
| ++"Function"++ + :material-gamepad-circle-up:    | Quick load from the currently selected save slot |
| ++"Function"++ + :material-gamepad-up:           | Next save slot                                   |
| ++"Function"++ + :material-gamepad-down:         | Previous save slot                               |
| ++"Function"++ + :material-gamepad-left:         | Rewind                                           |
| ++"Function"++ + :material-gamepad-right:        | Fast forward                                     |
| ++"Function"++ + ++"L1"++                        | Take a screenshot                                |
| ++"Function"++ + ++"Volume Up"++                 | Increase brightness                              |
| ++"Function"++ + ++"Volume Down"++               | Decrease brightness                              |
| ++"Function"++ + ++"Power"++                     | Switch power LED modes (on, off when in-game, always off) |
| ++"L2"++                                         | **In Drastic (NDS)**: Swap first/second screen (single screen) or switch between screen arrangements (dual screen) |
| ++"Function"++ + ++"L2"++                        | **In Drastic (NDS)**: Switch between single/dual screen |
| ++"R2"++                                         | **In Drastic (NDS)**: Touch cursor click         |
| ++"Function"++ + ++"R2"++                        | **In Drastic (NDS)**: Microphone input           |

## Advanced-Drastic Hotkey Shortcuts

Since Gladiator, KNULLI comes with Advanced-Drastic, an additional Nintendo DS (NDS) emulator.

| Shortcut                                        | Action                                           |
| ----------------------------------------------- | ------------------------------------------------ |
| ++"Function"++ + ++"Start"++                    | Quit the game and return to EmulationStation     |
| ++"Function"++ + ++"Select"++                   | **Only on devices without analog sticks:** Toggle between mapping either the D-pad or an analog stick to the D-pad (for moving the touch cursor in NDS) |
| ++"Function"++ + :material-gamepad-circle-down:  | Open the emulator menu                           |
| ++"Function"++ + :material-gamepad-circle-left:  | Quick save in the currently selected save slot   |
| ++"Function"++ + :material-gamepad-circle-right: | Toggle blur on/off                               |
| ++"Function"++ + :material-gamepad-circle-up:    | Quick load from the currently selected save slot |
| ++"Function"++ + :material-gamepad-up:           | Next screen arrangement layout                   |
| ++"Function"++ + :material-gamepad-down:         | Previous screen arrangement layout               |
| ++"Function"++ + :material-gamepad-right:        | Fast forward                                     |
| ++"Function"++ + :material-gamepad-left:         | Next bezel decoration                            |
| ++"Function"++ + ++"Volume Up"++                 | Increase brightness                              |
| ++"Function"++ + ++"Volume Down"++               | Decrease brightness                              |
| ++"L2"++                                         | Swap first/second screen                         |
| ++"R2"++                                         | Touch cursor click/microphone input              |

!!! info "Not every emulator supports every shortcut"

    Most hotkey shortcuts work for **most** cores. Even though only savegames from RetroArch cores are integrated into the EmulationStation GUI and can be loaded directly from the menu, most other cores also provide save game slots which can be accessed by the same shortcuts."

!!! info "Hotkey shortcuts and RetroAchievements"

    If you are collecting [Retro Achievements](../retro-achievements) in *hardcore mode*, all save/load fast foward/rewind actions are disabled by definition. However, for *regular* RetroAchievements, saving/loading etc. is enabled.

!!! warning "Emulation shortcuts do not apply to native applications"

    Games from the [PortMaster](../../systems/portmaster) library are not emulated and therefore do not respond to emulation shortcuts. Do not panic if your PortMaster games do not react to your hotkey shortcuts - this is expected behavior. To find out how to save, load, and exit your PortMaster games, please refer to the game's manual.
