# :material-folder-cog: Formatting

!!! danger "Important:  Read this before you proceed!"

    We **strongly** suggest to use [**Network Transfer**](../network-transfer) to access to your KNULLI device and stick with the **ext4** file system. Before you attempt to format any of your SD cards, please make sure to read the warning in the [Add Games](..) section.

## Before you format

* Be aware that formatting implies that **all data** on the formatted storage will be **permanently deleted**.
* Make sure to choose the **correct disk** for formatting, especially if you have a **2-SD-card setup**!
* **Avoid** formatting directly from your Windows/macOS/Linux computer and use the **built-in KNULLI formatter instead** if possible!

!!! danger "Issues with the built-in formatter"
    Some users experienced issues when formatting their SD cards with the built-in formatter of KNULLI build 05/30. The issues have been **resolved since**. However, if you run KNULLI build 05/30 and are unable to format your SD card with the built-in formatter, you might want to try [formatting with Windows](#formatting-with-windows) instead.

## The built-in formatter

### Available file systems

The built-in KNULLI formatter offers **three** different filesystems. However, only **two** of them are currently supported by KNULLI:

* **:material-check: ext4** is a Linux file system which **cannot be accessed** directly from Windows/macOS. However, ext4 supports **large swap files** and **symbolic links**. Therefore, PortMaster games **run perfectly** on ext4-formatted storages.
* **:material-check: exFAT** is a Windows/macOS-compatible file system which is used by most CFWs, Smartphones, etc. However, exFAT is **incapable** of handling **large swap files** and **symbolic links**. Therefore, many PortMaster games **cannot be played** on exFAT-formatted storages.
* **:material-cancel: BTRFS** is a file system which is currently **NOT SUPPORTED BY KNULLI**.

### Formatting

The built-in KNULLI formatter can be used to format both, the internal data storage on your primary SD card (**internal**) and the optional second SD card (**external**).

To format your data storages to the file systems of your choice, open the KNULLI main menu by pressing ++"Start"++ and choose *Format a disk* in the *Frontent developer options* section of the *System settings*. Make sure to choose the correct *Device to Format* and the *File System* you want to format the device to. Be aware that you need to reboot your device to apply the formatting after you chose *Format now*.

!!! info "After Formatting"

    After formatting, KNULLI will create and populate the [`/userdata` folder](../game-storage) for you.

## Formatting with Windows

Formatting with Windows is only useful if you want to format your SD card to **exFAT**. As explained throughout this wiki, exFAT will allow direct access to your SD card from Windows but will make it impossible to run most [PortMaster](../../../systems/portmaster) games.

If you want to format your SD card from Windows, we strongly suggest to use the Windows **Disk Management** tool which will make it easier to format the **correct partition**. You can find the tool by opening the *Start Menu* and typing `disk management`. (The tool will present itself by the name *"Create and format hard disk partitions"*.

<table>
	<tr>
		<td width="50%">
			<img src="/_inc/images/play/formatting/001-formatting-after-flashing-not-yet-expanded.png">
			<p><strong>Step 1: </strong>Make sure that your partitions have been expanded properly before proceeding. The screenshot shows an SD card <strong>before</strong> the share partition was expanded with a lot of <strong>unallocated</strong> space. To make sure the partition is expanded properly, you might want to boot your KNULLI device from the SD card before proceeding.</p>
		</td>
		<td width="50%">
			<img src="/_inc/images/play/formatting/002-formatting-delete-volume.png">
	    	<p><strong>Step 2: </strong>After your SD card has been initialized, find the largest, now expanded partition and select <em>Delete Volume</em>.</p>
		</td>
	</tr>
	<tr>
		<td>
			<img src="/_inc/images/play/formatting/003-formatting-create-volume.png">
			<p><strong>Step 3: </strong>Right-click the now unallocated space and pick <em>New Simple Volume</em>.</p>
		</td>
		<td>
			<img src="/_inc/images/play/formatting/004-formatting-create-volume-max-size.png">
			<p><strong>Step 4: </strong>Make sure to assign all available disk space to your newly created volume.</p>
		</td>
	</tr>
	<tr>
		<td>
			<img src="/_inc/images/play/formatting/005-formatting-create-volume-assign-drive-letter.png">
			<p><strong>Step 5: </strong>Assign a drive letter to your newly created volume. (You can pick any drive letter you want, it doesn't matter, however, we recommend to use one Windows suggests automatically.)</p>
		</td>
		<td>
			<img src="/_inc/images/play/formatting/006-formatting-create-volume-format-to-exfat.png">
			<p><strong>Step 6: </strong>Make sure to format the volume with the file system <strong>exFAT</strong>, allocation unit size <strong>default</strong>, and volume label <code>share</code>.</p>
		</td>
	</tr>
	<tr>
		<td>
			<img src="/_inc/images/play/formatting/007-formatting-formatted-to-exfat.png">
			<p><strong>Step 7: </strong>Verify that you now have a <em>share</em> partition formatted to exFAT.</p>
		</td>
		<td></td>
	</tr>
</table>
