# :material-frequently-asked-questions: FAQ: Troubleshooting

### Q: Can I use a second SD card for my roms/bios content?

A: Yes! Have a look in the [Second SD Card](../../play/add-games/second-sd-card) section!

---

### Q: I would like to try muOS and KNULLI - is it possible to have the same second SD card for both CFWs to share my games between them?

A: KNULLI requires all the ROMs to be in the respective subfolders of the emulated system, e.g., `roms/snes` for SNES ROMs. If you populate your SD card the KNULLI way (see [Add Games](../../play/add-games) section for details), it will be possible to configure your muOS to take the ROMs from these folders, which will enable you to use the same second SD card for your ROMs in both CFWs.

---

### Q: I have Garlic with my ROMs/BIOSes on the second SD card. Is it possible to reuse that card for KNULLI?

A: By default, KNULLI expects a different name for the ROM folders and their location, but thanks to @XQuader there's a script that creates the compatible configuration for KNULLI based on the Garlic structure. You can read more about it on [this Reddit post](https://www.reddit.com/r/RG35XX/comments/12zxs8t/how_to_get_garlicos_roms_folders_working_in/).

---

### Q: The installation seems to be running; I can see it's expanding the partition but it's taking too long

A: Expanding and booting the first time with a 64GB SDCARD takes about 1 to 1:30 minutes. If your SDCARD is larger it may take much longer, however, if it goes beyond 5 minutes, chances are that something didn't go well. Just press reset and the system will continue. If that's the case, the partition may not have been expanded. For that you will need to manually expand the card on your PC/Mac/Linux.

---

### Q: I cannot connect to my Wi-Fi even though my device has a wireless network adapter - what can I do?

A: Some users experienced issues when connecting their device to a **WPA2+WPA3-protected Wi-Fi**. KNULLI currently **doesn't support** WPA2+WPA3 networks, so we recommend to lower security measures and switch your Wi-Fi to WPA1+WPA2 if possible.

However, KNULLI Firefly comes with a brand new **experimental service** which might allow you to connect to your WPA2+WPA3-protected Wi-Fi anyway. If you have problems connecting to your Wi-Fi, try to enable the service. Press ++"Start"++ to bring up the main menu, go to *System Settings*, then *Services*, and enable *WIRELESS_HYBRID_FIX*. Be aware that this feature is **experimental**.

---

### Q: I've installed/updated to the latest version, and I don't have audio, my controls don't respond, or something else is not working as expected - what can I do?

A: You might want to try to reset your device to **factory settings**. Please follow our guide on [Resetting to Factory Settings](../../configure/reset-to-factory-settings)

---

### Q: Why do my RetroArch settings always reset whenever I launch a game?

A: You are not supposed to make changes in RetroArch directly. Most relevant options for each emulator and/or RetroArch core can be set in EmulationStation either globally or per system or even per game. The RetroArch configuration file is **generated** anew with every launch of a game, based on the settings you made globally or for the specific system/game in **EmulationStation**. For that reason, all the changes you make while playing will be overwritten the next time you launch a game, except for **overrides** and **remap files**.

Please set up your emulators in EmulationStation. If you miss an emulator option in EmulationStation that seems relevant to you, you might want to get in touch and make your case. Maybe we can help you adopt this emulator option into an EmulationStation setting or at least give you insight why we don't think this option should be set by the user.

---

### Q: Why are bezel decorations not working on my KNULLI device?

A: Most bezel decorations are made for screens with an aspect ratio of 16:9. Consequently, those bezels do not work on a 4:3 display (like on the Anbernic RG35XX H/Plus/SP). To get bezel decorations working, find a bezel pack for 4:3 displays. You will find a detailed explanation (and a pointer to 4:3-compatible bezels) in the [Bezel Decorations](../../configure/customization/bezel-decorations) section.

---

### Q: I have battery issues with my Anbernic device of the RG35XX/RG40XX Plus/SP/2024/H/V series. My battery seems to discharge faster on Knulli than on stock OS, even in sleep mode or when completely turned off!

!!! danger "Read this before reporting battery issues"
    Due to the reasons explained below, it is **not helpful at all** to report battery issues based on the **displayed percentage**. Telling us that your battery lost 10% of battery while the device was turned off **does not help**, because **you cannot possibly know** if that number is even correct.
    Currently, the **only** valid way to investigate your battery issues with KNULLI is to watch the **power indicator LED** of your device and measure the time it takes for the device to drain completely. E.g., when investigating sleep mode efficiency, **charge the device fully**, put it in sleep mode and see how long it takes for the device to **drain completely**.

A: To our knowledge, there is no difference between the the efficiency of sleep modes between KNULLI and the **initial version** of the Anbernic stock OS. However, experiments indicate that the **improved** stock OS sleep mode performs **better** than the the sleep mode provided by KNULLI. Since Anbernic does not make their source code available, our developers are still examining the stock OS to determine what changes they made to further improve their sleep mode. Until we figure this out, KNULLI will only provide regular sleep mode which consumes about 5% of battery charge per hour.

If you perceive that your device discharges too fast, there's a variety of factors which might be at play here:

* The **battery indicator** of **Emulation Station** (the KNULLI frontend) has a **bug** which causes it to get **stuck** sometimes. It is a **known issue** that is being worked on. However, until the issue is fixed, you **cannot rely** on the **accuracy** of the displayed **battery percentage**. Restarting the device or updating gamelists might temporarily fix the issue, however, it will happen again.
* The battery percentage that can be read from the **battery drivers** sometimes gives inaccurate readings. Our developers noticed that sometimes the battery percentage reported directly from the battery makes rather large jumps, e.g., from 93% directly to 100% when charging. Consequently, even if your battery indicator is **not** stuck, the displayed battery percentage might still be **a little inaccurate**.
* The regular **sleep mode** provided by the kernel for the Anbernic devices of that series is very **inefficient**, especially compared to modern smartphones or similar devices:
     * It applies a simple **suspend to RAM**, which means that many components of the device are shut off, but the entire state of the device is kept in **RAM** (Random Access Memory). Consequently, the device will still require some power to keep the RAM active.
     * The Anbernic devices of that series consume a lot of power to maintain the RAM in sleep mode, which is why you might notice a **discharge** of about **5% per hour**, so you cannot put the device to sleep indefinitely.
     * The **improved sleep mode** seems to save more power, however, it is still unknown to us how this is achieved.
     * More efficient power management could be achieved by implementing **suspend to disk**, which would keep the state of the device in a **persistent memory**, such as a hard disk or an SD card. The device would be able to **power off completely**, therefore saving much more battery charge. However, the custom kernel provided by Anbernic for the devices of that series only allows **Suspend to RAM**. We will not be able to provide a **suspend to disk** implementation until the Anbernic devices of that series are supported by the mainline Linux kernel.
* It is possible that your battery **discharges a little** even when the device is **turned off** completely. It might be a **self-preservation mechanism** built into the battery to make sure that it doesn't stay charged at 100% for too long.
* If you perceive that your device drains all battery charge within a day or less despite being turned off, the device most likely was **not** turned off but only in **sleep mode**.

---

### Q: I am trying to run KNULLI on my RG35XX SP, but I only get some distorted lines on my screen - what can I do to fix this?

A: There is nothing you can do. The device you have is a new revision of the RG35XX SP with a screen that is not yet supported by KNULLI. We have already identified the issue and we are working on a fix. If everything goes according to plan, your device will be fully supported with the next release of KNULLI!

---
