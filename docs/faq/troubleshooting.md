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

If you know your way around Linux and understand the concept of symbolic links, you can take the time to study the folder structure of KNULLI and employ symbolic links to use the storage space of both SD cards by turning certain subfolders on the SD card KNULLI is set up to use into symbolic links to subfolders on the **other** SD card. However, for that to work, **both** data storages still need to be formatted to **ext4**.

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

### Q: Why are bezel decorations not working on my KNULLI device?

A: Most bezel decorations are made for screens with an aspect ratio of 16:9. Consequently, those bezels do not work on a 4:3 display (like on the Anbernic RG35XX H/Plus/SP). To get bezel decorations working, find a bezel pack for 4:3 displays. You will find a detailed explanation (and a pointer to 4:3-compatible bezels) in the [Bezel Decorations](../../configure/customization/bezel-decorations) section.

---

### Q: There seems to be some battery drain. What can I do?

A: Most likely, there is no battery drain. There is a bug in the algorithm which calculates and refreshes the estimated battery charge. Therefore, the displayed percentage is inaccurate. Do not worry about it, your battery is fine. Our developers are already working on a solution to give you a more precise battery charge indicator.

---
