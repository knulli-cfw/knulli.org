# :material-chip: BIOSes

A BIOS (basic input/output system) is a software which provides basic, low-level access to the hardware of a computer system. Many types of computer systems come with a pre-installed BIOS which is embedded in the hardware, often stored on read-only memory (ROM). Some video game consoles also come with BIOses. When emulating those systems, sometimes the BIOSes are required to emulate the systems properly.

!!! warning "BIOSes are protected by copyright"

    Much like many games, BIOS firmwares are protected by copyright. Consequently, KNULLI does **not** come with any BIOS files! If you want to emulate systems with KNULLI, you will have to provide any required BIOS files by yourself.

## Adding BIOS files

KNULLI comes with many different emulators for many different systems. Not all of these systems require BIOS files. However, emulators which required BIOS files expect the BIOS files to be stored in the `bios` folder. The emulators expect the files to be stored under very specific names, sometimes even in a very specific subfolder.

### Identifying missing BIOS files

Thankfully, KNULLI comes with a *Missing BIOS check* which helps you determine which BIOS files are missing for your emulators to run. To launch the *Missing BIOS check*, press  ++"Start"++ and head to *Game settings* where you will find *Missing BIOS check*. Here, you will be informed about all the BIOS files which are either **missing** entirely or not matching the checksum and therefore possibly **wrong** files in the right place.

Make sure to **pay attention** to

* the **path** of the file. (Is it `bios/[filename]` or `bios/[subdir]/[filename]`?)
* the **exact** path/file **names**. (Mind spaces, underscores, etc.)
* any lowercase/uppercase letters. (Knulli is **case-sensitive**!)
* whether the file is really **missing** or just has the wrong **checksum**, indicating a **wrong** file rather than a **missing** file.

!!! info "Files with wrong checksum"

    The *Missing BIOS check* is **very strict** about correct checksums. However, in some cases, even though the checksums **do not match up**, the BIOS files are still **working fine**. If your BIOS files are in the right place but not passing the checksum test, try running your games anyway.

Additionally, if you are using Microsoft Windows, you might want to make sure that **file extensions** are **visible** in your Windows Explorer. This way, you will be able to avoid accidentally having **double file extensions** like `.bin.bin` or **wrong file extentions** like `.bin.zip`.

If you want to learn more about compatible BIOS files, you might want to check out the [Systems](https://wiki.batocera.org/systems) section of the very comprehensive Batocera Wiki. In this section, you will find detailed information about the required BIOS files for many different systems.

!!! info "Missing BIOS warnings"

    When launching a game, KNULLI warns you if BIOS files are missing. It is possible (but not recommended) to disable this feature: Press ++"Start"++ to bring up the main menu, then go to *Game settings* and disable *Check BIOS files before running a game*.

#### Adding the files

You can add the files to your `bios` folder the same way you add your games to the `roms` folder. You will find detailed instructions in the [Add Games](../../play/add-games) section. Please make sure to add BIOS files *exactly* as specified by the *Missing BIOS check*.
