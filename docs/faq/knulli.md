# :material-frequently-asked-questions: FAQ: About KNULLI

### Q: What is KNULLI?
A: KNULLI is a fork of [Batocera](https://batocera.org). It tries to provide support for devices that fall under at least one of these two categories:

* There are no open source kernel and/or u-boot sources available
* There are sources, but the kernel is either not mainline, and/or too old (e.g. devices with a BSP kernel 3.4 like the Egret II Mini)
* It's a device that I own and I have decided to create a Custom Firmware for it

---

### Q: OK, so why a fork and not merge the changes back to Batocera?

A: Because the license of Batocera does not allow for closed sourced kernels to be added to the distribution.

---

### Q: Are there any other differences?

A: The goal is to maintain compatibility with batocera, but with focus on low powered devices or devices that don't necessarily benefit from some features that have an impact on device performance, etc. For instance, devices with low memory (256MB like Powkiddy A12/A13 or RG35XX Classic). Then there's also the intention to add features currently present in [JelOS](https://jelos.org)/[Rocknix](https://github.com/rocknix), [EmuELEC](https://github.com/EmuELEC), etc.

---

### Q: Do you know what the word "Knulli" means in Swedish?

A: Yes, we do. 😃

---

### Q: I am using the Batocera v39/40 beta on my RG35XX Plus/H - should I switch to KNULLI?

A: The short answer is: Yes!

The long answer is: After we adapted Batocera to make it work on the RG35XX Plus/H, it became clear that Batocera will not be able to integrate our proposed changes into their software due to licensing issues. The license under which Batocera is published is not compatible with the license of the drivers for the RG35XX Plus/H. Therefore, we created a fork of Batocera under a completely new name to resolve the licensing issues. While the Batocera v39/40 beta for RG35XX Plus/H is no longer maintained, KNULLI is its immediate successor. Consequently, switching to KNULLI corresponds to updating to a newer version of the same OS you are already using.

---

### Q: Where can I download the latest version?

A: You will find the latest version of KNULLI on our [Releases page](https://github.com/knulli-cfw/distribution/releases/latest). Find the download for your device in the `Installation Package Downloads` section and follow the [Installation guide](../play/install) to install KNULLI on your device. If your device is not listed there, please be patient - there is no public release of KNULLI for your device available, yet.

---

### Q: Which devices are supported?

A: You will find a list of all currently supported devices in the `Installation Package Downloads` section of our [Releases page](https://github.com/knulli-cfw/distribution/releases/latest). If your device is not listed there, there is no public release of KNULLI for your device available, yet.

---

### Q: Do I have to flash every release or can I update?

A: For most of the releases you can update:
  * Download the boot.tar.xz file from the releases page
  * Extract its content
  * Mount your KNULLI SDCARD on your PC/Mac/Linux computer
  * Delete the file ``boot/knulli`` (you can make a backup of this file on your computer in case you want to revert to the previous version)
  * Copy the contents of the extracted boot.tar.xz to the SDCARD

---

### Q: Do you support X device?  Will you add support for X device?

A: You can find the list of currently supported devices here: [Devices](../../devices)

If the device you are interested in isn't in that list then no one has contributed the work to add support for it yet.  Why? To add support for a device we (1) need to be interested in adding support for it 😊 and (2) need to have direct access to the device.

That said, anyone who is interested can submit updates to KNULLI to add support for a device they care about! If you are interested in adding support for a new device please start here: [Contribute](../contribute)

---

### Q: Is it possible to license KNULLI for redistribution?

A: KNULLI utilizes a non-commercial CC BY-NC-SA 4.0 copyleft license on our branding which is intended to prevent abuse of our work.  Device Makers and others who would like to bundle on devices may not do so without our express permission.

---

### Q: Can I sell KNULLI?

A: The KNULLI brand is licensed for non-commercial use only.  It is not allowed to be sold or included as an up charge in any form what-so-ever.  Period.  This is not negotiable.

---
