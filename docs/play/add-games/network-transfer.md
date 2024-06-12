# :material-wifi-plus: Network Transfer

Network transfer can be used on any device which can be connected to the internet or a local network. (This includes devices with native networking capabilites and ones where networking can be added through an external dongle.)

This option first requires you to set up networking on your device.  Please see [Networking](../../configure/networking) for details. Once you have completed those steps, you will need

* the hostname and/or IP address of your device.
* the root password, if additional security measurements are in place, as explained in the [Networking](../../configure/networking) section.

### Windows networks (SMB)

Like many other operating systems, KNULLI supports SMB, the Windows network protocol. Depending on the type of computer you have, there are different options to transfer your games and other data via SMB.

After you successfully logged in, you will be able to access the `share` partition as a network drive. The network drive corresponds to your current [`/userdata` folder](../game-storage). Here, you can put all your data (games, etc.) in the respective folders.

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

    - The name of the device corresponds to the **hostname** set it your KNULLI device. If `KNULLI` does not work, check the current **hostname** in the *Network Settings* of your KNULLI device. you can also use the **IP address** of your device when typing directly into the address bar.
    - If additional security measurements are in place, you will be prompted for your credentials.
        - The expected username is `root`, the password is the **root password** shown in the *Security* section of the *System Settings*.
    
#### macOS

- Open finder, select *Go* and then *Connect to Server* from the top menu.
- In the address bar that appears, type either `smb://[HOSTNAME]` or `smb://[IP-ADDRESS]` into the address bar (replace `[HOSTNAME]` with the hostname or `[IP-ADDRESS]` with the IP address of your device).
- If additional security measurements are in place, you will be prompted for your credentials.
    - The expected username is `root`, the password is the *Root password* shown in the *Security* section of the *System settings*.

### FTP

Using your FTP program of choice; set up an SFTP connection to the IP address to your KNULLI device. You will need hte hostname or the IP address of the device. Make sure the port is set to `22`. The expected username is `root` and the expected password is the *Root password* you will find in the *Security* section of the *System settings*.

### HTTP

!!! warning "This section is still under construction. Sorry, we're working on it! :smile: Until it's done, you might want to join us on [:simple-discord: Discord](https://discord.gg/HXPS3DAeeB) to get in touch - maybe we can help you there!"

### After transferring your data

Once your data is completely transferred, make sure to update your gamelists to make the data available. You can do so by pressing ++"Start"++ to open the main menu, then open *Game settings* and select *Update gamelists*. KNULLI will rescan all game folders and identify all the games you added to make them available in EmulationStation.
