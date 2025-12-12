# :material-console: SSH

As an advanced user, you might want to access the command line (or shell) of your KNULLI device to enter Linux commands directly. You may do so by connecting to KNULLI via SSH. There are several SSH clients available. For Windows users, we recommmend [SmarTTY](https://sysprogs.com/SmarTTY) (which is also able to do file transfers) or [PuTTY](https://www.putty.org).

However, it is also possible to simply use the SSH client which is already integrated in your operating system: Most Linux distributions and modern Windows versions come with a SSH command line tool, MacOS comes with one by default as well.

To connect to your KNULLI device via SSH, simply connect the device to your local network as described in the [Networking](./networking.md) section and establish the SSH connection as explained below.

## Required information

When establishing your SSH connection, you will need the following information:

* Host: Either the hostname of your KNULLI device (default is `KNULLI`) or the current IP address (press ++"Start"++ and go to *Network settings* to find your current IP address)
* Username: `root`
* Password: Your current root password (press ++"Start"++ and go to *System settings* and *Security* to find your current root password, default is `linux`)

## Option 1: Using SSH from the command line

* Open a command line/terminal on your computer.
    * Windows users can use the new Windows Terminal, classic CMD, or PowerShell.
    * Linux users probably know their way around the command line anyway.
    * MacOS users can just use the default terminal app.
* Type
  ```
  ssh root@knulli
  ```
  and confirm by pressing ++"Enter"++. (If you changed the hostname of your KNULLI device, you might need to replace `knulli` with the hostname you chose or the IP address of your KNULLI device.)
* If asked, you may confirm fingerprinting.
* When asked, type your password and confirm.
* After the password was verified, you should be connected to your device via SSH.
* Once you are done with SSH, you can quit the SSH client by typing `exit` and confirming.

## Option 2: Using a standalone SSH client tool

To establish a SSH connection via SmarTTY, install and launch the program, then follow these steps:

<table>
	<tr>
		<td>
			<img src="/_inc/images/configure/ssh/smartty-new-connection-001.png">
			<p><strong>Step 1: </strong>Click <em>New SSH connection...</em> at the bottom left of the window.<p>
		</td>
		<td>
			<img src="/_inc/images/configure/ssh/smartty-new-connection-002.png">
	    	<p><strong>Step 2: </strong>Setup a new SSH connection with the following settings and click <em>Connect</em>.</p>
			<table>
				<tr>
					<th>Host Name:</th>
					<td><code>KNULLI</code></td>
				</tr>
				<tr>
					<th>User Name:</th>
					<td><code>root</code></td>
				</tr>
				<tr>
					<th>Password:</th>
					<td><code>linux</code></td>
				</tr>
				<tr>
					<td colspan=2>
						<strong>Also check:</strong>
						<ul>
							<li>Setup public key authentication and don't ask for password again</li>
							<li>Save this connection to connections list</li>
						</ul>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td>
			<img src="/_inc/images/configure/ssh/smartty-new-connection-003.png">
			<p><strong>Step 3: </strong>When prompted for a type of virtual terminal, choose a <em>regular Terminal</em>.</p>
		</td>
		<td>
			<img src="/_inc/images/configure/ssh/smartty-new-connection-004.png">
			<p><strong>Step 4: </strong>You have successfully established a SSH connection to your KNULLI device.</p>
		</td>
	</tr>
</table>
