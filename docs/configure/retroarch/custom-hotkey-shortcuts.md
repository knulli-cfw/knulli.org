# :material-controller: Custom Hotkey Shortcuts

!!! danger "Please read before getting started"

    The KNULLI team does **not** recommend to customize RetroArch hotkey shortcuts unless you are **absolutely sure** what you are doing. We **strongly** recommend to get familiar with the **global** [Hotkey Shortcuts](../../../play/hotkey-shortcuts) instead.
    
    Before you attempt to manually reassign your hotkey shortcuts in **RetroArch**, please be aware of two issues:

    * KNULLI comes with **a lot** of emulators which are **not** integrated with RetroArch. Your RetroArch settings will **not apply** to any **standalone emulators**. By changing your RetroArch shortcuts, you will put your device in an **inconsistent state** with **different shortcuts** for different emulators.
    * Some hotkey shortcut actions are implemented on the **operating system level**, not on the emulation level. Consequently, those hotkey shortcuts **cannot be disabled or modified** within RetroArch. Assigning any emulation-level action to a shortcut which is also assigned to an OS-level action will **inevitably** result in a **double binding**.

With every launch of a game, KNULLI re-generates RetroArch configuration files according to the settings you made in EmulationStation (the KNULLI GUI). Consequently, all settings you made in RetroArch while it was running will be reset the next time you launch a game.

If you want to set up your own custom RetroArch hotkey combinations, you have two options: You can use **overrides** to define hotkey combinations for each system or even game separately, or you can simply edit `batocera.conf` and set up your own hotkey bindings there.