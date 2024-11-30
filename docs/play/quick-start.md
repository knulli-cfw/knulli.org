# :material-fast-forward: Quick Start Guide

Hi there! Welcome to KNULLI!

With this quick start guide, we will help you get started with KNULLI on your handheld device. If you are **completely new** to handheld emulation and custom firmwares (CFWs), this guide will lead you through your **first steps**. If you are an **advanced user**, this guide will make you aware of things KNULLI might do **differently** than other custom firmwares you have already used.

!!! danger "Important: Read this before you start!"

    Unlike many other CFWs, KNULLI currently uses **ext4** as the default file system for your games, saves, configs, etc. ext4 is a **Linux** file system which **cannot** be accessed from **Windows/MacOS**. Don't worry: You will still be able to add your games via [network transfer](../add-games/network-transfer). We made this decision **purposely** to create a workaround for an ongoing issue with **PortMaster** compatibility.

    It is possible to reformat the internal storage to **exFAT** or use an exFAT-formatted **secondary SD card** if you prefer to be able to access your SD card directly from Windows. (**exFAT** is the default file system of SD cards and thumb drives.)

    However, several PortMaster games are still **not working properly** on KNULLI when running from exFAT-formatted SD cards. The PortMaster team is aware of the situation and a fix is already on its way as they are updating their games systematically.

    We **strongly recommend** that you read the [PortMaster and exFAT section](../../guides/portmaster-and-exfat) **before you proceed** and make a decision on how to handle data storage on your KNULLI device.

## Installing KNULLI [![Latest](https://img.shields.io/github/release/knulli-cfw/distribution.svg?labelColor=111111&color=5998FF&label=Latest&style=flat#only-light)](https://github.com/knulli-cfw/distribution/releases/latest)[![Latest](https://img.shields.io/github/release/knulli-cfw/distribution.svg?labelColor=dddddd&color=5998FF&label=Latest&style=flat#only-dark)](https://github.com/knulli-cfw/distribution/releases/latest)

Find the latest KNULLI release on our [GitHub repository](https://github.com/knulli-cfw/distribution/releases/latest), find the image for your **specific device** in the *Installation Download Package* section, download it, and flash it onto an SD card. Do **not** attempt to format anything manually afterwards, KNULLI will do it for you! Just put the SD card in your device, **remove** SD cards from any other slot, and boot the device to finish installation. (First boot can take quite long since KNULLI will expand and format your games partition. Be patient.)

If you need more detailed information on how to install KNULLI, have a look into the [Install](../install) section.

## First steps

Your first steps will depend on how you want to use your KNULLI device.

### 1. Set up your data storage

KNULLI works fine from a single SD card. If you want to get to know KNULLI first, we recommend that you start with a single SD card and start exploring KNULLI. However, we **definitely recommend** to use a **dual SD card setup** on the long run. Your **first SD card** will only carry the **operating system**. All your games, themes, save states, etc. will be stored on the **second SD card**. (Do not worry: It is possible to migrate from a single SD card setup to a dual SD card setup later as explained in the [Dual SD Card Migration Guide](../../guides/dual-sd-card-migration).)

Take a moment to consider how much you want to play **PortMaster** games right away. Make sure to read the section about [PortMaster and exFAT](../../guides/portmaster-and-exfat) to learn about your options before you decide how you you want to handle your data storage.

Be aware that depending on your choice it might be required to **reformat** the storage before you can use it. Please use the **built-in KNULLI formatter** for this purpose. Also, please be aware that you have to **switch** between internal and external storage **manually**. (You will find detailed instructions on [switching](../add-games/second-sd-card) and [formatting](../add-games/formatting) storages in the [Add Games](../add-games) section.)

It is possible to use an already populated SD card as secondary SD card. However, if you attempt to do so, please make sure that the **folder structure** matches the one described in the [Game Storage](../add-games/game-storage) section.

!!! danger "Decide how you want to store your files"

    | SD cards     | I don't need to access my SD card directly from Windows. Network transfer works for me! I just want to play PortMaster games right now without compromise!                                                                                                 | I want to access the SD card from Windows without network transfer! I don't care that I might need to wait a while or put in some work until I can play my PortMaster games! |
    | ------------ | -------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------- |
    | 1            | *You are good to go!* :material-check:                                                                                           | *You will have to* [***reformat***](../add-games/formatting) *your* ***internal storage*** *to* ***exFAT***. |
    | 2            | *You will have to* [***reformat***](../add-games/formatting) *your* [***external storage***](../add-games/second-sd-card) *to* ***ext4*** *(unless it is already formatted to ext4).*      | *You will have to* [***reformat***](../add-games/formatting) *your* [***external storage***](../add-games/second-sd-card) *to* ***exFAT*** *(unless it is already formatted to exFAT).* |

Make sure that you **made a decision** on how to store your files and **prepared the storage accordingly** before you continue with the next step.
### 2. Set up your Wi-Fi

Unless you have decided to reformat to exFAT, this step is **mandatory** to be able to add your games. Press the ++"Start"++ button to open the main menu and go to *Network settings* where you can configure your Wi-Fi connection. (You will find more detailed instructions about setting up Wi-Fi and increasing security in the [Networking](../../configure/networking) section.)

!!! danger "Troubleshooting"

    If you are unable to connect your KNULLI device to your Wi-Fi, please make sure to disable WPA3 encryption in your router and stick with WPA2 instead.

### 3. Add games and BIOSes

Depending on your storage choice, you can now start to add your games. If you decided to go with **exFAT**, you can simply shut down your KNULLI device, take out the SD card which holds your games, and put it in your computer. You will be able to copy all your games directly to the SD card.

If you decided to stick with **ext4**, use **network transfer** instead: On Windows, open your **Windows Explorer** and find the **KNULLI** device in your **Network** section. If the device does not show up, you can type `\\KNULLI` in the address bar of your Windows Explorer to find it manually. On **macOS**, select *Go* in *Finder*, pick *Connect to Server* and type `smb://KNULLI` in the address bar. (If you changed the hostname manually, look for the hostname of your choice instead.)

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

In any case, you may drag-and-drop your games and BIOS files from your local hard disk drives to the corresponding folders on your KNULLI device. You will find a more detailed walkthrough and more alternative solutions for adding games in the [Add Games](../add-games) section.

### 4. Install PortMaster (optional)

If you are interested in ports, you probably want to install PortMaster now. Make sure that you are connected to your Wi-Fi, head to the *Ports* section, find *Install.PortMaster* and launch it. Afterwards, you will find *PortMaster* in the *Ports* section. (You will find more information about how to install and run PortMaster in the [PortMaster](../../systems/portmaster) section.)

!!! info "Missing PortMaster installer"

    If *Install.PortMaster* is missing from your *Ports* section, please follow the instructions in the [PortMaster](../../systems/portmaster) section.

### 5. Scrape media (optional)

After you have added and installed all your games, you might want to **add cover artworks**, text descriptions and other **metadata** to your games. KNULLI comes with a fully functional **scraper** which will retrieve available media and metadata for you. Our scraper supports **ScreenScraper**, **TheGamesDB** and **ArcadeDB** as scraping sources. (You will find instructions for scraping in the [Scraping](../scraping) section.)

### 6. Set up Retro Achievements (optional)

If you want to collect Retro Achievements, you should log in to your Retro Achievements account. Press ++"START"++ on your controller, select *Game Settings* and head to *RetroAchievement Settings* to enter your credentials. Be aware that Retro Achievements only work while you are connected to the internet. (You will find more information about Retro Achievements in the  [Retro Achievements](../retro-achievements) section.)

## Play!!

Congratulations - you are ready to start playing! How does that feel? If this is your first time using a device/CFW like this, we strongly recommend to learn the **hotkey shortcuts** (you will find them in the [Hotkey Shortcuts](../hotkey-shortcuts) section) before you launch the first game. Aside of that, you are good to go!

We hope you enjoy playing your games with KNULLI!

!!! info "You are not alone!"

    If you run into any issues, don't worry - you are not alone! Find help in our wiki, have a look into the [FAQ](../../faq), or join us on [:simple-discord: Discord](https://discord.gg/HXPS3DAeeB) where we will try to answer your questions.
