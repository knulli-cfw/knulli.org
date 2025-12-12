# :material-wifi-plus: Network Transfer

Network transfer can be used on any device which can be connected to the internet or a local network. (This includes devices with native networking capabilites and ones where networking can be added through an external dongle.)

This option first requires you to set up networking on your device.  Please see [Networking](../../../configure/networking) for details. Once you have completed those steps, you will need

* the hostname and/or IP address of your device.
* the root password, if additional security measurements are in place, as explained in the [Networking](../../../configure/networking) section.

!!! info "Default credentials"

    The default **username** for network access to your device is `root`. The default **password** is `linux`.

### Windows networks (SMB)

!!! info "SMB is a service now"

    Starting with KNULLI Gladiator II, SMB is a service that you can enable and disable anytime you like. For users who do not need it, keeping it disabled might save a bit of battery charge.

    To enable SMB, go to *System Settings*, then *Services* and enable *SAMBA*!

Like many other operating systems, KNULLI supports SMB (often also called SAMBA), the Windows network protocol. Since KNULLI Gladiator II, SMB is no longer enabled by default. However, you can always toggle SMB on and off as you like it. To enable/disable SMB, go to *System Settings*, then *Services* and enable/disable *SAMBA*.

Now, depending on the type of computer you have, there are different options to transfer your games and other data via SMB. After you successfully gained access to your device, you will be able to access the `share` partition as a network drive. The network drive corresponds to your current [`/userdata` folder](../game-storage). Here, you can put all your data (games, etc.) in the respective folders.

#### Windows

On every Windows computer, SMB is integrated into the *Windows Explorer*.

<table>
	<tr>
		<td>
			<img src="/_inc/images/play/add-games/001a-smb-find-in-network-section.png">
			<p><strong>Step 1a: </strong>Find your KNULLI device in the <em>Network</em> section of your <em>Windows Explorer</em>.</p>
		</td>
		<td>
			<img src="/_inc/images/play/add-games/001b-smb-find-by-hostname.png">
	    	<p><strong>Step 1b: </strong>Find your KNULLI device by typing <code>\\KNULLI</code> in the address bar of your <em>Windows Explorer</em>.</p>
		</td>
		<td>
			<img src="/_inc/images/play/add-games/002-smb-open-share-folder.png">
			<p><strong>Step 2: </strong>Open the <code>share</code> folder of your KNULLI device to find the contents of the <code>/userdata</code> folder.</p>
		</td>
		<td>
			<img src="/_inc/images/play/add-games/003-smb-find-system-in-roms-folder.png">
			<p><strong>Step 3: </strong>Open the <code>roms</code> folder of your KNULLI device to find the subfolders for each systems (e.g., SNES).</p>
		</td>
	</tr>
</table>

If you want to access your KNULLI device regularly, you can even assign a drive letter to make it show up in *This PC*. By doing so, you will even be able to see, how much space you have left on your SD card.

<table>
	<tr>
		<td>
			<img src="/_inc/images/play/add-games/004-smb-map-network-drive.png">
			<p><strong>Step 1: </strong>Right-click the <code>share</code> folder in <em>Windows Explorer</em> and select <em>Map network drive...</em>.</p>
		</td>
		<td>
			<img src="/_inc/images/play/add-games/005-smb-map-network-drive.png">
	    	<p><strong>Step 2: </strong>Assign a drive letter and confirm.</p>
		</td>
		<td>
			<img src="/_inc/images/play/add-games/006-smb-map-network-drive.png">
			<p><strong>Step 3: </strong>Find your KNULLI <code>share</code> folder as a network drive in <em>This PC</em> in <em>Windows Explorer</em>.</p>
		</td>
	</tr>
</table>

!!! danger "Troubleshooting"

    - The name of the device corresponds to the **hostname** set it your KNULLI device. If `KNULLI` does not work, check the current **hostname** in the *Network Settings* of your KNULLI device. You can also use the **IP address** of your device when typing directly into the address bar.
    - If additional security measurements are in place, you will be prompted for your credentials.
        - The expected username is `root`, the password is the **root password** shown in the *Security* section of the *System Settings*.
    
#### macOS

- Open finder, select *Go* and then *Connect to Server* from the top menu.
- In the address bar that appears, type either `smb://[HOSTNAME]` or `smb://[IP-ADDRESS]` into the address bar (replace `[HOSTNAME]` with the hostname or `[IP-ADDRESS]` with the IP address of your device).
- If additional security measurements are in place, you will be prompted for your credentials.
    - The expected username is `root`, the password is the **root password** shown in the *Security* section of the *System Settings*.

### SCP/FTP

Using your SCP/FTP program of choice; set up an SCP/SFTP connection to the IP address to your KNULLI device. You will need the hostname or the IP address of the device (the default hostname is `KNULLI`). Make sure the port is set to `22`. The expected username is `root` and the expected password is the *Root password* you will find in the *Security* section of the *System settings* (the default password is `linux`).

!!! info "Parts of KNULLI are read-only"

    Unlike the *SMB* file transfer, SCP/FTP will provide access to the **entire** KNULLI file system, not just the `/userdata` folder. However, **everything outside** of the `/userdata` folder is **read-only** - you **can** edit, change, remove, and delete files, but your changes will be **undone** every time you **reboot**.
    
    If you want to make persistent changes outside of the `/userdata` folder, please have a look at the section about [Patches and Overlays](../../../configure/patches-and-overlays).

For Windows users, we recommend to use [WinSCP](https://winscp.net). After installing WinSCP on your Windows computer, follow these steps to establish a SCP connection to your KNULLI device, where you will able to drag-and-drop or copy/paste files directly from the *Windows Explorer*:

<table>
	<tr>
		<td>
			<img src="/_inc/images/play/add-games/add-games-scp-001.png">
			<p><strong>Step 1: </strong>Create a <em>New Site</em> with the following setup and click <em>Login</em>.<p>
			<table>
				<tr>
					<th>File protocol:</th>
					<td>SCP</td>
				</tr>
				<tr>
					<th>Host name:</th>
					<td><code>KNULLI</code></td>
				</tr>
				<tr>
					<th>Port number:</th>
					<td><code>22</code></td>
				</tr>
				<tr>
					<th>User name:</th>
					<td><code>root</code></td>
				</tr>
				<tr>
					<th>Password:</th>
					<td><code>linux</code></td>
				</tr>
			</table>
		</td>
		<td>
			<img src="/_inc/images/play/add-games/add-games-scp-002.png">
	    	<p><strong>Step 2: </strong><em>Accept</em> the host key.</p>
		</td>
	</tr>
	<tr>
		<td>
			<img src="/_inc/images/play/add-games/add-games-scp-003.png">
			<p><strong>Step 3: </strong>Ignore any warnings about password expiration and just <em>Continue</em>.</p>
		</td>
		<td>
			<img src="/_inc/images/play/add-games/add-games-scp-004.png">
			<p><strong>Step 4: </strong>You have successfully established a connection to your KNULLI device. <strong>Do not panic</strong> if you do not see all the folders immediately. Select a folder (e.g., <em>userdata</em>) in the folder tree on the left side of the window to see its contents.</p>
		</td>
	</tr>
</table>

### HTTP

!!! info "Currently not supported"

    Support for HTTP for file transfer is not currently supported and is not on the roadmap.  Pull Requests are welcome and you can join us on [:simple-discord: Discord](https://discord.gg/HXPS3DAeeB) to engage with the developers if you are interested in contributing.

### After transferring your data

Once your data is completely transferred, make sure to update your gamelists to make the data available. You can do so by pressing ++"Start"++ to open the main menu, then open *Game settings* and select *Update gamelists*. KNULLI will rescan all game folders and identify all the games you added to make them available in EmulationStation.
