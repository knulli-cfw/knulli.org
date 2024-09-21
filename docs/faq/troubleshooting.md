# :material-frequently-asked-questions: FAQ: Troubleshooting

### Q: I want to add my own ROMs to the SD card but my Windows/Mac computer can't see the roms partition - what can I do?

A: By default KNULLI formats the second partition with the ext4 filesystem for Linux. That format is typically
not readable/mountable under Windows/Mac. However, ext4 is required for several [PortMaster](../../systems/portmaster) games to work properly. 

Instead of accessing the partition directly, we propose to use network transfer instead. Alternatively, you may reformat the partition from within KNULLI, if you are sure that you do not want to play PortMaster games. Please refer to the [Add Games](../../play/add-games) section for details about network transfer and reformatting.

---

### Q: Can I use a second SD card for my roms/bios content?

A: Yes! Have a look in the [Second SD Card](../../play/add-games/second-sd-card) section!

---

### Q: Can I use one SD card only for PortMaster so that the other can still be exFAT?

A: The short answer is: No.

The long answer is: Knulli will use **either** SD 1 **or** SD 2 for **all** of your user data, including games, saves, etc. There is **no way** around your SD cards being formatted to **ext4** if you want to play PortMaster games.

If you know your way around Linux and understand the concept of symbolic links, you can take the time to study the folder structure of KNULLI and employ symbolic links to use the storage space of both SD cards: You could turn certain subfolders on the SD card KNULLI is **set up to use** into symbolic links to subfolders on the **other** SD card. However, for that to work, **both** data storages still need to be formatted to **ext4**.

You can learn more about the [Game Storage](../../play/add-games/game-storage), [using a Second SD card](../../play/add-games/second-sd-card), and [the KNULLI filesystem](../../configure/patches-and-overlays) in the respective wiki sections.

---

### Q: I would like to try muOS and KNULLI - is it possible to have the same second SD card for both CFWs to share my games between them?

A: KNULLI requires all the ROMs to be in the respective subfolders of the emulated system, e.g., `roms/snes` for SNES ROMs. If you populate your SD card the KNULLI way (see [Add Games](../../play/add-games) section for details), it will be possible to configure your muOS to take the ROMs from these folders, which will enable you to use the same second SD card for your ROMs in both CFWs.

---

### Q: I have Garlic with my ROMs/BIOSes on the second SD card. Is it possible to reuse that card for KNULLI?

A: By default KNULLI expects a different name for the ROM folders and their location, but thanks to @XQuader there's a script that creates the compatible configuration for KNULLI based on the Garlic structure. You can read more about it on [this Reddit post](https://www.reddit.com/r/RG35XX/comments/12zxs8t/how_to_get_garlicos_roms_folders_working_in/).

---

### Q: The installation seems to be running, I can see it's expanding the partition but it's taking too long

A: Expanding and booting the first time with a 64GB SDCARD takes about 1 to 1:30 minutes. If your SDCARD is larger it may take much longer, however, if it goes beyond 5 minutes, chances are that something didn't go well. Just press reset and the system will continue. If that's the case, the partition may have not been expanded. For that you will need to manually expand the card on your PC/Mac/Linux.

---

### Q: I cannot connect to my Wi-Fi even though my device has a wireless network adapter - what can I do?

A: Make sure that your router is set to WPA2. Some users experience connection issues with Wi-Fis which are set to WPA3.

---

### Q: I've installed/updated to the latest version and I don't have audio, or my controls don't respond, or something else is not working as expected - what can I do?

A: You might want to try to reset your device to **factory settings**. Please follow our guide on [Resetting to Factory Settings](../../configure/reset-to-factory-settings)

---

### Q: When I try to open Retro Achievements, I get an error message with status code `419`, telling me I am not authorized. What can I do?

A: Nothing. But don't worry! If you see this message, it only means that your version of KNULLI does not support **displaying** your collected Retro Achievements, **yet**. However, it is still completely possible to **collect** Retro Achievements while playing! Just set up your Retro Achievements account as explained in the [Retro Achievements](../../play/retro-achievements) section and start hunting!

---

### Q: Where can I change the hotkey shortcuts? When I try to change hotkeys in RetroArch, my changes are reset every time I start a game!

A: The short answer is: Nowhere. You are not supposed to change them, you should just use the ones described in the [Hotkey Shortcuts](../../play/hotkey-shortcuts) section.

The long answer is: Unlike other CFWs for previous generations of handhelds, KNULLI is **not** limited to RetroArch-integrated emulators. KNULLI comes with **a lot** of **standalone** emulators. Some of them have to be configured by the developers with hard-coded programming because they can't be configured at runtime.

Like the Batocera project we forked from, KNULLI wants to give the users a consistent user experience. Therefore, we provide a set of pre-defined hotkey shortcuts that work for **most** emulators as consistent as possible. We are currently **not** planning to add any options for you to be able to change hotkeys anytime soon, but we are discussing options.

Tech-savvy users might be able to override our settings for **RetroArch** specifically by replacing them in `batocera.conf`, following [this guide](https://wiki.batocera.org/advanced_retroarch_settings#rebinding_retroarch_s_hotkeys) on the Batocera website. However, be aware that some shortcuts that we provide on the OS level might conflict with your manual choices for hotkeys on the RetroArch level, which might lead to double-bindings. Consequently, we do **not** recommend tinkering with hotkeys at all.

---

### Q: Why do my RetroArch settings always reset whenever I launch a game?

A: You are not supposed to make changes in RetroArch directly. Most relevant options for each emulator and/or RetroArch core can be set in EmulationStation either globally or per system or even per game. The RetroArch configuration file is **generated** anew with every launch of a game, based on the settings you made globally or for the specific system/game in **EmulationStation**. For that reason, all the changes you make while playing will be overwritten the next time you launch a game, except for **overrides** and **remap files**.

Please set up your emulators in EmulationStation. If you miss an emulator option in EmulationStation that seems relevant to you, you might want to get in touch and make your case. Maybe we can help you adopt this emulator option into an EmulationStation setting or at least give you insight why we don't think this option should be set by the user (e.g. hotkey changes which would lead to system-wide inconsistencies).

---

### Q: Why are bezel decorations not working on my KNULLI device?

A: Most bezel decorations are made for screens with an aspect ratio of 16:9. Consequently, those bezels do not work on a 4:3 display (like on the Anbernic RG35XX H/Plus/SP). To get bezel decorations working, find a bezel pack for 4:3 displays. You will find a detailed explanation (and a pointer to 4:3-compatible bezels) in the [Bezel Decorations](../../configure/customization/bezel-decorations) section.

---

### Q: I am using an Anbernic device of the RG35/40XX H/Plus/SP/V/2024 series. Why does my battery lose so much charge in sleep mode? Sleep mode on Anbernic stock OS seems more efficient!

A: There are two different types of sleep mode: *Suspend to RAM* and *Suspend to disk* (sometimes also referred to as *hibernation*).

When *suspending to RAM*, many components of the device are shut off, but the entire state of the device is kept in *RAM* (Random Access Memory). Consequently, the device will still require some power to keep the RAM active. This type of sleep mode consumes still quite some power, but it is fast to wake up and it does not wear out the hard disk.

When *suspending to disk*, the state of the device is written to a persistent memory, such as a hard disk or an SD card. The device will be able to power off completely, therefore saving much more battery charge. However, I/O operations to persistent memory are slow, so this mode takes longer to go to sleep and wake up again, also it might slowly wear out the persistent memory.

The custom kernel provided by Anbernic for the devices of that series only allows *Suspend to RAM*. Sadly, the Anbernic devices of that series consume a lot of power to maintain the RAM in sleep mode, which is why you might notice a discharge of about 5% per hour, so you cannot put the device to sleep indefinitely.

With a more recent update, Anbernic changed the sleep mode concept. Instead of *suspending to RAM*, the stock OS does now *suspend to disk*. However, their implementation of *suspend to disk* is a hacked solution and **not** an appropriate implementation of proper hibernation.

The KNULLI developers purposely decided **not** to adopt the hacked solution into the KNULLI software. Instead, we are working on switching KNULLI to the mainline Linux kernel, which will allow a **proper** *suspend to disk* mode as it is supposed to be. Until KNULLI is switched to mainline kernel completely, KNULLI will only support *suspend to RAM*.

---

### Q: There seems to be some battery drain. What can I do?

A: Most likely, there is no battery drain. There is a bug in the algorithm which calculates and refreshes the estimated battery charge. Therefore, the displayed percentage is inaccurate. Do not worry about it, your battery is fine. Our developers are already working on a solution to give you a more precise battery charge indicator.

---
