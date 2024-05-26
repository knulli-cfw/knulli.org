# :material-frequently-asked-questions: Frequently Asked Questions

## About KNULLI

### Q: What is KNULLI?
A: KNULLI is a fork of [Batocera](https://batocera.org). It tries to provide support for devices that fall under at least one of these two categories:

* There are no open source kernel and/or u-boot sources available
* There are sources, but the kernel is either not mainline, and/or too old (e.g. devices with a BSP kernel 3.4 like the Egret II Mini)
* It's a device that I own and I have decided to create a Custom Firmware for it

---

### Q: Ok, so why a fork and not merge the changes back to batocera?

A: Because batocera license does not allow for closed sourced kernels to be added to the distribution. In some cases, some devices will

---

### Q: Are there any other differences?

A: The goal is to maintain compatibility with batocera, but with focus on low powered devices or devices that don't necessarily benefit from some features that have an impact on device performance, etc. For instance, devices with low memory (256MB like Powkiddy A12/A13 or RG35XX Classic). Then there's also the intention to add features currently present in [JelOS](https://jelos.org)/[Rocknix](https://github.com/rocknix), [EmuELEC](https://github.com/EmuELEC), etc. 

### Q: Where can I download the latest version?

You will find the latest version of KNULLI on our [Releases page](https://github.com/knulli-cfw/distribution/releases/latest). Find the download for your device in the `Installation Package Downloads` section and follow the [Installation guide](../play/install) to install KNULLI on your device. If your device is not listed there, please be patient - there is no public release of KNULLI for your device available, yet.

---

### Q: Which devices are supported?

You will find a list of all currently supported devices in the `Installation Package Downloads` section of our [Releases page](https://github.com/knulli-cfw/distribution/releases/latest). If your device is not listed there, there is no public release of KNULLI for your device available, yet.

---

### Q: I want to add my own roms to the SDCARD but my Windows/Mac computer can't see the roms partition

A: By default KNULLI formats the second partition with Linux EXT4 file format. That format is typically
not readable/mountable under Windows/Mac. We propose to use network transfer instead. Alternatively, you may reformat the partition from within KNULLI. Please refer to the [Add Games](../play/add-games) section for details.

---

### Q: Can I use a second SDCARD for my roms/bios content?

A: Yes! if you have a new or empty SDCARD you can insert the SDCARD on the second slot of the RG35XX and follow these steps:

* Boot KNULLI and go to ``Settings -> System Settings -> Storage Device`` and change it from ``INTERNAL`` to your second card, e.g. ``SHARE - 25.6G``. 
* Exit the settings menu and the system will indicate you need to reboot to get the changes applied. 
* Go to the menu ``Settings -> Quit -> Restart System`` to reboot. The system will reboot and the second card will be now used for batocera and the folder structure (roms, bios, etc.) will be created. 
* You can now shutdown the console, insert the card on your computer, and copy your bios & roms content.

---

### Q: I have Garlic with my roms/bios on the second SDCARD. Is it possible to reuse that card for KNULLI?

A: By default KNULLI expects a different name for the roms folders and its location, but thanks to @XQuader there's a script that creates the compatible configuration for KNULLI based on the Garlic structure. You can read more about it on [this Reddit post](https://www.reddit.com/r/RG35XX/comments/12zxs8t/how_to_get_garlicos_roms_folders_working_in/)

---

### Q: The installation seems to be running, I can see it's expanding the partition but it's taking too long

A: Expanding and booting the first time with a 64GB SDCARD takes about 1 to 1:30 minutes. If your SDCARD is larger it may take much longer, however if it goes beyond 5 minutes chances are that something didn't go well. Just press reset and the system will continue. If that's the case the partition may have not been expanded. For that you will need to manually expand the card on your PC/Mac/Linux.

---

### Q: I've installed/updated to the latest version and I don't have audio, or my controls don't respond, or something else is not working as expected:

A: If you have updated from an older version you may need to copy the ``batocera.conf`` from the releases page to your SDCARD:
  * If you use one single SDCARD, mount the second partition on your PC/Mac/Linux (``SHARE``) and copy the file to ``system/batocera.conf``
  * If you use two SDCARDs, mount the second SDCARD on your PC/Mac/Linux and copy the file to ``system/batocera.conf``

---

### Q: Do I have to flash every release or can I update?

A: For most of the releases you can update:
  * Download the boot.tar.xz file from the releases page
  * Extract its content
  * Mount your KNULLI SDCARD on your PC/Mac/Linux computer
  * Delete the file ``boot/knulli`` (you can make a backup of this file on your computer in case you want to revert to the previous version)
  * Copy the contents of the extracted boot.tar.xz to the SDCARD

---

### Q: I am trying to run NDS roms but when trying to launch them the console returns to emulationstaion. Is it possible to use Drastic?
A: Currently Drastic is the best emulator for NDS roms. However it's not working to launch roms directly from the NDS roms menu. See [this issue in Github](https://github.com/rg35xx-cfw/rg35xx-cfw.github.io/issues/25#issuecomment-1526845570) to see how to add drastic to launch from the ports menu. Once the script is added to roms/ports, you can launch the standalone drastic emulator, and then navigate to ``/userdata/roms/nds`` to find your roms. Note that roms need to be uncompressed in .nds format.
Both desmume and melonds run but the performance is not very good compared with Drastic.

---

### Q: Do you support X device?  Will you add support for X device?
A: You can find the list of currently supported devices here: [Devices](../devices)

If the device you are interested in isn't in that list then no one has contributed the work to add support for it yet.  Why? To add support for a device we (1) need to be interested in adding support for it 😊 and (2) need to have direct access to the device.

That said, anyone who is interested can submit updates to KNULLI to add support for a device they care about! If you are interested in adding support for a new device please start here: [Contribute](../contribute)

---

### Licensing KNULLI for redistribution
A: KNULLI utilizes a non-commercial CC BY-NC-SA 4.0 copyleft license on our branding which is intended to prevent abuse of our work.  Device Makers and others who would like to bundle on devices may not do so without our express permission.

---

##### Selling KNULLI
The KNULLI brand is licensed for non-commercial use only.  It is not allowed to be sold or included as an up charge in any form what-so-ever.  Period.  This is not negotiable.

