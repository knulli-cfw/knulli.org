# :material-controller: Hotkey Shortcuts

Hotkey shortcuts are among the most important basics you need to learn in order to navigate your KNULLI device and play your games. This section will give you an overview over the available hotkey shortcuts.

!!! danger "Customizing shortcuts"

     Currently, KNULLI does **not** support hotkey shortcut customization.
     
     The reason is simple: KNULLI attempts to provide the best possible out-of-the-box user experience. For that reason, KNULLI comes with pre-defined hotkeys which apply to (almost) **every emulator** KNULLI comes with. Unlike the RetroArch-integrated emulator cores, many **standalone** emulators **cannot** be configured at runtime. Instead, hotkeys have to be defined on the **source-code level**. It is possible to **[override hotkey shortcuts in RetroArch](../../configure/retroarch/custom-hotkey-shortcuts)**, but we **strongly advise against it**.

All hotkey shortcuts follow the same pattern: Press *and hold* the ++"Function"++ button and press another key to call the respective action as indicated by the table below. If you cannot locate the function button on your device, find help in the [Basic Inputs section](../basic-inputs).

!!! info "On-screen manual"

     If you forgot a shortcut: Don't worry! KNULLI comes with an on-screen manual. At the home screen, press ++"Select"++ to bring up the *Quick access* menu. Here, you will be able to *View user manual*, which contains a list of all shortcuts.

| Shortcut                                        | Action                                           |
| ----------------------------------------------- | ------------------------------------------------ |
| ++"Function"++ + ++"Start"++                    | Quit the game and return to EmulationStation     |
| ++"Function"++ + ++"Select"++                   | **Only on devices without analog sticks:** Toggle between mapping either the D-pad or an analog stick to the D-pad (e.g., for playing N64)     |
| ++"Function"++ + :material-gamepad-circle-down: | Open the emulator menu of the current core       |
| ++"Function"++ + :material-gamepad-circle-left: | Quick save in the currently selected save slot   |
| ++"Function"++ + :material-gamepad-circle-up:   | Quick load from the currently selected save slot |
| ++"Function"++ + :material-gamepad-up:          | Next save slot                                   |
| ++"Function"++ + :material-gamepad-down:        | Previous save slot                               |
| ++"Function"++ + :material-gamepad-right:       | Fast forward                                     |
| ++"Function"++ + :material-gamepad-left:        | Rewind                                           |
| ++"Function"++ + ++"L1"++                       | Take a screenshot                                |
| ++"Function"++ + ++"Volume Up"++                | Increase brightness                              |
| ++"Function"++ + ++"Volume Down"++              | Decrease brightness                              |
| (In **Drastic** (NDS) emulator): ++"L2"++       | Toggle between screen arrangements               |
| (In **Drastic** (NDS) emulator): ++"R2"++       | Toggle between single/dual screen mode           |

!!! info "Not every emulator supports every shortcut"

    Most hotkey shortcuts work for **most** cores. Even though only savegames from RetroArch cores are integrated into the EmulationStation GUI and can be loaded directly from the menu, most other cores also provide save game slots which can be accessed by the same shortcuts."

!!! info "Hotkey shortcuts and RetroAchievements"

    If you are collecting [Retro Achievements](../retro-achievements) in *hardcore mode*, all save/load fast foward/rewind actions are disabled by definition. However, for *regular* RetroAchievements, saving/loading etc. is enabled.

!!! warning "Emulation shortcuts do not apply to native applications"

    Games from the [PortMaster](../../systems/portmaster) library are not emulated and therefore do not respond to emulation shortcuts. Do not panic if your PortMaster games do not react to your hotkey shortcuts - this is expected behavior. To find out how to save, load, and exit your PortMaster games, please refer to the game's manual.
