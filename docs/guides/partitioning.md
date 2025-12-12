# :material-micro-sd: Partitioning

This section will introduce you to the concept of partitioning and explain in detail what partitioning has to do with KNULLI. You do not need to know this to play your games. However, if you run into issues with your KNULLI installation or if you wonder about formatting issues, reading this section might help understanding how KNULLI works beyond what's visible to you.

## What the... is "partitioning"?

Partitioning means, in layman's terms, to split a data storage (e.g., a hard disk, or an SD card) into different smaller sections. This is often done to create dedicated spaces for specific purposes. Imagine, for example, to split the hard disk of your computer into a dedicated section for your own files (pictures, music, downloads, etc.) and the operating system, to make sure that even if you accidentally max out available memory for your own files, the OS still has some wiggle room for updates, etc.

## Why should I care?

When you [flash KNULLI](../play/install.md) onto an SD card, the SD card will be partitioned during the flashing. It **does not matter** what your SD card was formatted to before or how many partitions it had before. During the flashing, the entire SD card will be **wiped** and **repurposed**. Once the flashing is done, your SD card will have been split into 6 segments:

* Some 36 MB of unallocated space
* a 20 MB partition that's formatted to a Linux file system and required for running KNULLI
* a 16 MB partition that's formatted to a Linux file system and required for running KNULLI
* a 4 GB partition called `BATOCERA` that's formatted to the Windows/MacOS-compatible **FAT32** and holds the image file which contains the KNULLI custom firmware (`boot/batocera`), as well as some files required for booting, e.g., your `bootlogo.bmp`
* a 512 MB partition that's formatted to a Linux file system and **will become your `SHARE` partition** - this is where all your [user data](../play/add-games/game-storage.md) will be stored
* The remaining, currently unused empty space of your SD card

After flashing, you might notice that your Windows computer will show some new drives in **My PC** and complain about the drives being unreadable and suggest to reformat those drives. **Do not do that.** Windows is unable to read Linux file systems, however, those drives are exactly as they should be. Do not touch them, leave them as they are and ignore Windows' desperate attempts to claim those partitions for itself!

<table>
  <tr>
    <td width="50%">
      <img src="/_inc/images/guides/partitioning/partitioning-001.png">
      <p>The single partition of a regular 64 GB SD card as it shows in Windows <em>Disk Management</em>.</p>
    </td>
    <td width="50%">
      <img src="/_inc/images/guides/partitioning/partitioning-002.png">
      <p>The very same 64 GB SD card as it shows in Windows <em>Disk Management</em> right after flashing KNULLI with Rufus.</p>
    </td>
  </tr>
</table>

## What's with the empty space?

Don't worry. By default, KNULLI comes with a small 512 MB userdata partition to make sure it can be flashed on SD cards of any size (8 GB or greater).

However, during the first boot of KNULLI, KNULLI will detect the unused space and **resize** the `SHARE` partition to **max out** the remaining available space of your SD card. Once the partition is resized, it will also be **re-formatted** to **exFAT** to make this drive accessible on your Windows machine.

<table>
  <tr>
    <td width="50%">
      <img src="/_inc/images/guides/partitioning/partitioning-002.png">
      <p>A 64 GB SD card as it shows in Windows <em>Disk Management</em> right after flashing KNULLI with Rufus.</p>
    </td>
    <td width="50%">
      <img src="/_inc/images/guides/partitioning/partitioning-003.png">
      <p>The very same 64 GB SD card as it shows in Windows <em>Disk Management</em> after the <code>SHARE</code> partition was expanded during first boot of KNULLI.</p>
    </td>
  </tr>
</table>

Once this is done, the partition will be made accessible within KNULLI under the path `/userdata`. (Mind that Linux does not have drive letters, only paths/folders.) This is why "`/userdata`", "`SHARE`", "share partition", "userdata partition", etc. are all terms which refer to the exact same storage space: The `SHARE` partition of your primary SD card.

!!! info "Dual SD cards"

    If you run a dual SD card setup, you make KNULLI mount the second SD card into `/userdata` **instead** of the `SHARE` partition of the primary SD card. This is the reason why you can't use both SD cards as game storage at the same time.

## But I want ext4!

Before the release of KNULLI Gladiator, KNULLI formatted the `SHARE` partition to the **ext4** file system by default. The reason was an [issue with PortMaster games](./portmaster-and-exfat.md) that has been resolved since. Since KNULLI Gladiator, the `SHARE` partition is now formatted to **exFAT** by default, to make it easier for Windows/MacOS users to access their user data directly.

However, **ext4** is still a **superior file system** in direct comparison to **exFAT**. It is faster and has a better protection against file system corruption caused by interrupted writing operations. If direct access via Windows/MacOS is not important to you, you might prefer to reformat your `/userdata` partition to **ext4**.

No matter if you run a single or dual SD card setup: We **strongly recommend** that you let KNULLI do the formatting **after** flashing and **after** first boot (and therefore **after** the `SHARE` partition of your primary SD card was expanded properly). Simply use the [built-in formatter](../play/add-games/formatting.md) to format your `/userdata` partition to your preferred file system.

## How does it help me to know this?

Education is fun. No, just kidding. Troubleshooting, mostly.

### Identifying a `/userdata` partition which cannot be mounted

> *"I tried to upload my games via Wi-Fi and it says there's no space even though I have a 128 GB SD card and I did not add any games, yet!"*

> *"I just installed KNULLI but it keeps resetting my settings (e.g., wi-fi credentials, theme settings, etc.) on every boot!"*

Those issues usually indicate the same underlying problem: Either your `/userdata` partition was not expanded properly or it cannot be mounted properly. This is often caused by manual attempts to manipulate the formatting or the size of the partition instead of letting KNULLI handle it. However, it can also be caused by a malfunctioning SD card, by a malfunctioning flash software, or by a corrupted image file. It isn't uncommon that a partition cannot be mounted anymore after taking the SD card out of a computer without ejecting it gracefully.

* If your KNULLI installation is set up as a single SD card setup, the best course of action in all those cases is to download the KNULLI image anew and flash again. Once again, we strongly recommend to use Rufus on Windows machines. If the issue persists, maybe your primary SD card is malfunctioning and needs to be replaced.
* If your KNULLI installation is set up as a dual SD card setup, make sure the SD card is formatted to **exFAT** or **ext4**, those are the only two formats compatible with by KNULLI. If the issue persists, maybe your secondary SD card is malfunctioning and needs to be replaced.

### Manually assigning a drive letter to the `SHARE` partition

> *"I have followed the installation instructions but I do not see a `SHARE` in Windows!"*

For unknown reasons, Windows sometimes doesn't assign a drive letter to the `SHARE` partition after it was expanded. However, that doesn't mean it's not there.

* Open the *Start menu*
* Type `disk management` to find *Disk Management*
* Open *Disk Management*
* Identify your SD card at the bottom part of the screen where the partitions are shown as white blocks with blue bars above
* Right-click the `SHARE` partition and assign a drive letter
* The drive will now show up in *My PC*

<table>
  <tr>
    <td width="100%">
      <img src="/_inc/images/guides/partitioning/partitioning-004.png">
      <p>Assigning a drive letter to the <code>SHARE</code> partition in <em>Disk Management</em>.</p>
    </td>
  </tr>
</table>