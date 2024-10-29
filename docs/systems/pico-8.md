# Pico-8

## Overview

| Game Path | Supported Extensions |
| --- | --- |
| `roms/pico8` | ++".png"++ ++".p8"++ |

## Instructions

### Option 1: Running Pico-8 through RetroArch Fake-08

By default, KNULLI comes with *Fake08*, a free, Pico-8-compatible engine provided by RetroArch. Many Pico-8 games run perfectly fine with *Fake08*. Since Pico-8 games are usually free, you can download the `png` game files (or "carts") from the [Pico-8 website](https://www.lexaloffle.com/bbs/?cat=7&carts_tab=1#mode=carts&sub=2) and drop them in your `roms/pico8` folder. However, since *Fake08* does not cover all the features of the native Pico-8 engine, some games might not run properly with *Fake08*.

### Option 2: Running Pico-8 through the native engine

Pico-8 games are best played with the native engine as it supports all Pico-8 features without any limitations.  You need to purchase it from [Lexaloffle](https://www.lexaloffle.com/pico-8.php) and we do recommend that you buy a copy if you can. It's an awesome piece of software and it also comes with the tools to make your own games.

#### Setup

##### 1) Pico-8 Files

- Go to [Lexaloffle's download page](https://www.lexaloffle.com/games.php?page=updates)
- From that page download the `Raspberry Pi` zip file
- Unzip the Raspberry Pi zip file and...
    - Delete the `pico8` file
    - Rename the `pico8_64` file to `pico8`
- Create a directory in `userdata/bios/` called `pico-8`
- Upload the `pico8`, `pico8_dyn`, `pico8_gpio` and `pico8.dat` to this directory (you do not need any of the other files)
``` bash title="Final Folder Structure"
/userdata/bios/pico-8/
    ├─ pico8
    ├─ pico8_dyn
    ├─ pico8_gpio
    └─ pico8.dat
```

##### 2) Make sure that Pico8 is executable

By default, the `pico8` and `pico8_64` files from the Raspberry Pi zip file are already marked as executable (`-rwxr-xr-x`). However, if you unzip the file on a Windows machine, Linux permissions are lost in the process. Therefore, the file you copied to your BIOS folder might no longer be executable.

To make sure that the file is executable again, you may establish an SSH connection (see [SSH](../../configure/ssh) section for details) and enter the following command on the shell of your KNULLI device to add the executable permission (`x`) for all three user types:

```
chmod +x /userdata/bios/pico-8/pico8
```

The file should now be executable. You may verify by typing the following command and making sure, that the permission list in the result contains all three `x`es:

```
ls -l /userdata/bios/pico-8/pico8
```

##### 3) EmulationStation

- copy the following text into a file called `es_systems_pico8.cfg`
``` bash title="es_systems_pico8.cfg"
<?xml version="1.0" encoding="UTF-8"?>
<systemList>
  <system>
        <name>pico8</name>
	    <emulators>
            <emulator name="lexaloffle">
                <cores>
                    <core default="true">pico8_official</core>
                </cores>
            </emulator>
            <emulator name="libretro">
                <cores>
                    <core>fake08</core>
                </cores>
            </emulator>
        </emulators>
  </system>
</systemList>
```
- upload the `es_systems_pico8.cfg` you created to `/userdata/system/configs/emulationstation/`
- restart EmulationStation
- open the Pico-8 gamelist, press ++"SELECT"++, open `ADVANCED SYSTEM OPTIONS → EMULATOR` and then select `LEXALOFFLE: PICO8 OFFICIAL` as your Emulator

#### Playing a game

Once the above is set up is you have 2 options for playing games through Pico-8's native engine:

1. Using Splore
    - Splore is awesome as it allows you to browse and play the entire library of user created games with an internet connection.  
    - To use this method simply create a file named `Splore.png` in `roms/pico8`.
    - Note that you will need an internet connection to browse the pico-8 BBS (If you don't have an internet connection you can still use it to launch games you have downloaded previously)
    - To exit and return to EmulationStation you can press the ++"START"++ button while highlighting a game in Splore then selecting `Options > Shutdown`
2. Through .png or .p8 files added directly `roms/pico8`
    - Browse the list of games (aka. "Carts") on [Lexaloffle's website](https://www.lexaloffle.com/bbs/?cat=7&carts_tab=1#mode=carts&sub=2)
    - Download the .png or .p8 file for any game you are interested in playing and upload it to either `roms/pico8`
    - Refresh EmulationStation by pressing ++"START"++ to open the Main Menu then select `Game Settings > Update Gamelists`.
    - You should now be able to launch the game by selecting it from the gamelist.
    - To exit a game and return to EmulationStation you can press the ++"START"++ button then selecting `Options > Shutdown`
