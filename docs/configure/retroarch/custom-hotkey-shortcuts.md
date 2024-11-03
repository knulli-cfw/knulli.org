# :material-controller: Custom Hotkey Shortcuts

!!! info "Custom hotkeys cannot be set up globally"

    Before you attempt to manually reassign your hotkey shortcuts in **RetroArch**, please be aware of two issues:

    * KNULLI comes with **a lot** of emulators which are **not** integrated with RetroArch. Your RetroArch settings will **not apply** to any **standalone emulators**. By changing your RetroArch shortcuts, you will put your device in an **inconsistent state** with **different shortcuts** for different emulators.
    * Some hotkey shortcut actions are implemented on the **operating system level**, not on the emulation level. Consequently, those hotkey shortcuts **cannot be disabled or modified**. Assigning any emulation-level action to a shortcut which is also assigned to an OS-level action will **inevitably** result in a **double binding**. For that reason, **some buttons** are **not available** for custom hotkey shortcuts.


RetroArch-integrated emulators allow hotkey shortcuts to be set-up via configuration. Since KNULLI generates configuration files before every launch of every game, you can use the KNULLI GUI to customize hotkey shortcuts for every **RetroArch-driven system** or even for a single **game**.

## Where to customize hotkeys

Before customizing hotkeys shortcuts, decide whether you want to apply the customization to an entire **system** or just to a single **game**.

To reach the hotkey customizing menu for an entire **system**,

* press ++"Start"++ on the home screen to bring up the main menu.
* head to *Game Settings*.
* head to *Per System Advanced Configuration*.
* pick the **system** you want to customize hotkeys for.
* find the *Hotkeys* menu in the *Controls* section.
    * (If the *Hotkeys* menu is missing, you have chosen a system where hotkey shortcuts **cannot** be customized!)

To reach the hotkey customizing menu for a single **game** only,

* find the game on your device by browsing your game lists.
* **hold** the button that launches your games (usually ++"A"++ or ++"B"++).
* go to *Advanced Game Options*.
* find the *Hotkeys* menu in the *Controls* section.
    * (If the *Hotkeys* menu is missing, you have chosen a game for a **system** where hotkey shortcuts **cannot** be customized!)



## How to customize hotkeys

!!! warning "Remove any old overrides/customizations before proceeding"

    Since the "Firefly" version, KNULLI supports customizing hotkeys for RetroArch cores. However, with KNULLI, you are not expected to customize hotkeys **inside** of RetroArch. Instead, you are supposed to customize hotkeys via **EmulationStation**, the KNULLI GUI.
    
    If you still have hotkey customizations from a previous installation of KNULLI, either in form of **game/system overrides** or in form of manual edits to `batocera.conf`, please remove them **before** customizing your hotkeys via EmulationStation as explained below.

In the *Hotkeys* menu, you will find a list of actions which can be bound to hotkey shortcuts on the emulation level. **All** hotkey shortcuts will rely on the ++"Function"++ button (also known as ++"F"++, ++"M"++, or ++"Menu"++ button) being pressed and hold while pressing a **second button**. This **second button** is what you can customize in the *Hotkeys* menu.

For example, if you do not like the default hotkeys to save (++"Function"++ + :material-gamepad-circle-left:)  and load (++"Function"++ + :material-gamepad-circle-up:) your game, you can change them from to different combinations, e.g., ++"Function"++ + ++"R2"++ and ++"Function"++ + ++"L2"++.
