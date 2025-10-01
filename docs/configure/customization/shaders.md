# :material-panorama-variant-outline: Shaders

In context of video game emulation, shaders are software modules which can be applied to modify the look and feel of your games. Some shaders are made to improve visual quality, others are designed to purposely distort the visuals to re-create a specific nostalgic feel of an original LCD or CRT screen.

Not every emulator which comes with KNULLI does support shaders. However, most RetroArch-integrated emulators do.

The world of shaders can be a pretty deep rabbit hole. Thankfully, KNULLI will make it pretty easy for you to apply shaders to your games.

## Built-in shader configurations

KNULLI comes with a small variety of shader configurations which can be easily applied directly from EmulationStation. You can apply built-in shader configurations either **globally**, per **system**, or even per **game**.

### Apply a shader configuration globally

* Press ++"Start"++ to bring up the main menu
* Head to *Game Settings*
* Head to *Game Rendering & Shaders*
* Pick your preferred *Shader Set*

### Apply a shader configuration per system

The per-system setting can be used to **override** the **global** setting.

* Go to the game list of the system of your choice (e.g., *SNES*)
* Press ++"Select"++ to bring up the system menu
* Head to *Advanced System Options*
* Head to *Game Rendering & Shaders*
* Pick your preferred *Shader Set*

!!! info "Tutorial on shaders and overlays"

### Apply a shader configuration per game

The per-system setting can be used to **override** the **global** and/or the **system** setting.

* Go to the game list of the system of your choice (e.g., *SNES*)
* Find the game of your choice
* Press and hold the launch button (:material-gamepad-circle-down: or :material-gamepad-circle-right: depending on your setup)
* Head to *Advanced Game Options*
* Head to *Game Rendering & Shaders*
* Pick your preferred *Shader Set*

## Shader Sets Included with KNULLI

* *Auto* applies the default KNULLI shader set (which has no shaders specified) but applies GB - DMG colorization to gb and gb2players
* *None* prevents KNULLI from applying any shaders.  _This is the option to choose if you want Retroarch shader override saves to work as described in "Retroarch Overrides" below._
* *Curvature* applies crt-lottes-fast by default for most consoles and zfast-lcd for many handhelds. This provides some simple scanline and CRT curvature effects for consoles and a simple LCD grid for the handheld systems.
* *Enhanced* appies advanced-aa (anti-aliasing) by default, with psp-color being applied to some handheld systems and 2xScaleHQ for "Arcade" systems (neogeo, neogeocd, mame, fbneo, naomi, naomi2, and atomiswave).
* *Flatten-Glow* applies the blur filter kawase_glow to simulate the glowing color bleed of CRTs.  Some of the handheld systems use a version of simpletex_lcd which applies a texture to the output, simulating the old LCD displays, but some of them include color correction shaders stacked with them.
* *Retro* applies sharp-bilinear-simple to most systems and bevel for most handhelds.  
* *RGC-Dramatic-CRT* applies a custom shader preset based on some of Retro Game Corps' recommendations for a dramitic glow effect. This requires integer scaling in order to render evenly.
* *Scanlines* for most systems applies crt-pi for low GPU devices and crt-easymode other devicess as well as lcd-grid-v2 to most handhelds to provide some basic CRT effects and grids.
* *Sharp-Bilinear-Simple* applies sharp-bilinear-simple to *all* systems.
* *Sharp-Shimmerless* applies sharp-shimmerless to all systems (recommended by RGC for pixel balancing on non-integer scaled systems).
* *Sharp-Shimmerless-LCD-CRT* applies the sharp-shimmerless variants that include scanlines for consoles and grid lines for handhelds (recommended by RGC for pixel balencing on non-integer scaled systems).
* *Zfast* applies zfast-crt to most systems for a simple CRT effect and zfast-lcd for most handhelds for a simple grid.

!!! info "Interactions between shader sets and decoration sets (bezels)"
    While most shader sets can be applied in conjunction with most decoration sets, there can be conflicts due to scaling weirdness or both the shader and the bezel overlay trying to do the same job but different.  For example, some handheld overlays have an LCD style grid built into them to provide that type of effect.  By itself this is fine and less processor intensive (and more performance friendly) than using a shader to achieve the same effect.  However, it is also possible to have a shader that applies a differently spaced grid on the image resulting in two conflicting grids on top of the emulated game image which is somewhat unpleasant.  In those cases, it may be best to set either the shader set or decoration set for that system to "None" if you prefer the effect of the other method.

## Creating your own shader configurations

KNULLI allows to create your own shader configurations and apply them directly through EmulationStation. While this requires a tiny bit of tinkering, it is the **recommended way** of adding your own preferred shader setups for a bunch of reasons. Most prominently, setting up shaders through EmulationStation avoids messing with RetroArch overrides which might interfere with other KNULLI features such as multi-resolution bezel sets.

If you want to learn in depth how to setup shader configurations for KNULLI, we **strongly** recommend to take a look at the [Batocera wiki](https://wiki.batocera.org/emulationstation:shaders_set). Over there, you will find exhaustive documentation which works for KNULLI just the same.

However, with the following example, we give you a very brief overview on what to do.

### Example: Creating a shader configuration

!!! info "This is just an example"
    We will use one of the [Shimmerless](https://github.com/Woohyun-Kang/Sharp-Shimmerless-Shader) shaders as an **example** here, however, the method can be applied to **any compatible shader**.
    
    In the current releases of KNULLI (Gladiator and later), the sharp-shimmerless shaders are **already included** by default, so there is no need for you to re-create the steps tutorial to enable sharp-shimmerless!
    
    Still, these instructions provide a valid example how to add a filter to KNULLI and apply it either in RetroArch or directly via EmulationStation.

#### Folder preparations

Gain access to your device, either by direct access to the SD card or via [network transfer](../../../play/add-games/network-transfer/). If it does not exist already, create a `shaders` folder in your [`/userdata`](../../../play/add-games/game-storage).

Inside the new `shaders` folder, you will need at least two sub-folders for specific files:

* `shaders/`
    * `config/` will hold a **sub-folder** for every shader configuration you want to add to Emulation Station which will be populated with a simple text file called `rendering-defaults.yml` as explained below
    * `presets/` will hold your presets, usually `.glslp` files
    * `shaders/` will hold the actual shaders, usually in a **sub-folder** for every shader or shader set, usually `.glsl` files

Consequently, for the given example of `sharp-shimmerless-custom`, you could populate the folder as follows:

``` bash
shaders/
 └─ configs/
    └─ sharp-shimmerless-custom/
       └─ rendering-defaults.yml
 └─ presets/
    └─ sharp-shimmerless
       └─ sharp-shimmerless.glslp
       └─ sharp-shimmerless-grid.glslp
       └─ sharp-shimmerless-scanlines.glslp
 └─ shaders/
    └─ sharp-shimmerless
       └─ sharp-shimmerless.glsl
       └─ sharp-shimmerless-grid.glsl
       └─ sharp-shimmerless-scanlines.glsl
```

* The `*.glsp` and `*.glsl` files used in this example can be extracted from the [Shimmerless GitHub repository](https://github.com/Woohyun-Kang/Sharp-Shimmerless-Shader)

#### Editing rendering-defaults.yml for your custom configuration

After creating the config folder for your preset (in this example: `shaders/configs/sharp-shimmerless-custom/`) you will need to create a simple text file called `rendering-defaults.yml` inside that folder. You can edit it with a text editor of your choice. (For Windows users, we strongly recommend [Notepad++](https://notepad-plus-plus.org).)

Inside the file, you can first declare a default shader **preset** you want to apply to **all games**:

```
default:
  shader: presets/shimmerless/sharp-shimmerless
```

In the following lines, you can declare specific shader presets **per system** which will optionally **override** the default setting you made above, for example:

```
snes:
  shader: presets/shimmerless/sharp-shimmerless-scanlines
gba:
  shader: presets/shimmerless/sharp-shimmerless-grid
```

This setup would result in applying `sharp-shimmerless.glslp` to all games **except** SNES and Gameboy Advance. For SNES, `sharp-shimmerless-scanlines.glslp` is applied, for GBA, `sharp-shimmerless-grid.glslp` is applied.

#### Editing `glslp` preset files

!!! info "This is where the magic happens"

    `*.glslp` files are preset files which can hold an entire stack of shaders with their respective configuration. You can write your own `glslp` files from scratch if you like. However, you can also **temporarily** use the [RetroArch overrides approach](#retroarch-overrides) to create your own combination of shaders and **save them** as a **Global Preset**.

    The preset will appear in your userdata folder in `configs/retroarch/config/` as `global.glslp`. You can **move** this file to the `shaders/presets/` folder in your userdata folder and give it a proper name, e.g. `my-favorite-shaders.glslp`.

    By creating a corresponding `rendering-defaults.yml` file, you will be able to toggle your custom preset directly from EmulationStation now.

Depending on the folder structure you chose, your `glslp` preset files need to point to the correct absolute path of the `glsl` files. In our example, `sharp-shimmerless.glslp` should look like this:
```
shaders = 1

shader0 = /userdata/shaders/shaders/sharp-shimmerless/sharp-shimmerless.glsl
filter_linear0 = true
```

#### Reload gamelist

Once your shader configuration is ready to be applied, press the ++"Start"++ button on your device to open the main menu. Next, go to *Game Settings* and select *Update Gamelists* to make the shader available on your handheld. You may now apply your shader as described in the above section about [built-in shader configurations](#built-in-shader-configurations).

## RetroArch overrides

Generally, KNULLI expects you to make all your emulator settings via EmulationStation, the KNULLI frontend. Mind that all configuration files for each emulator are generated anew when launching a game, based on the settings you made in EmulationStation. Consequently, settings you make in RetroArch while a game is running **do not stick** by default, as they will only apply for the game that is currently running and will be dropped the next time you launch a game, because the configuration is re-generated from scratch.

However, even though we **do not** recommend it, it **is** possible to apply shaders directly through RetroArch. If you want RetroArch to handle your shaders instead of EmulationStation/KNULLI, you need to **disable** shaders in EmulationStation for the respective games/systems and create **overrides** from within RetroArch.

!!! info "Tutorial on shaders and overlays"

    Our friend Russ from Retro Game Corps has created a **very** thorough guide on how to use shaders and overlays. In this guide, he is giving countless examples on how to properly stack shaders and which shaders tie in well with which overlays and how to set them up. His guide is not KNULLI-specific; however, it is compatible with KNULLI. If you are new to shaders or if you need inspiration on how to tweak your shader setup, [have a look here](https://retrogamecorps.com/2024/09/01/guide-shaders-and-overlays-on-retro-handhelds/)!

### Disable shaders for the game/system in EmulationStation

It may seem counter-intuitive, but to **enable** shaders from within **RetroArch**, you first need to **disable** shaders in **EmulationStation**. To do so

* **either** go to the *Advanced Game Options* by holding the launch button (++"A"++ or ++"B"++, depending on your setup) on the game in the game list to disable shaders for the **game**.
* **or** go to the *System Settings* by bringing up the main menu via ++"Start"++, head to ++"Game Settings*, then head to *Per System Advanced Configuration* to disable shaders for the **system**.
* Find the menu for *Game Rendering & Shaders* and make sure that *Shader Set* is set to *None*.

### Apply shaders

Once you have an override file in place, hold ++"Function"++ and press ++"B"++ to bring up the RetroArch menu (if it is not open, yet). Find the *Shaders* section in the quick menu and open it. In this menu, you can **load** and **remove** shaders.

You can apply more than one shader on top of each other, which is why you can **append** and **prepend** shaders, to make sure the shaders are supported in whatever order you prefer them to be applied. There are countless possibilities for how to combine shaders, so we will not go into details here.

!!! info "Tutorial on shaders and overlays"

    Our friend Russ from Retro Game Corps has created a **very** thorough guide on how to use shaders and overlays. In this guide, he is giving countless examples on how to properly stack shaders and which shaders tie in well with which overlays and how to set them up. His guide is not KNULLI-specific; however, it is compatible with KNULLI. If you are new to shaders or if you need inspiration on how to tweak your shader setup, [have a look here](https://retrogamecorps.com/2024/09/01/guide-shaders-and-overlays-on-retro-handhelds/)!

If you choose to **load**, **append**, or **prepend** a shader, a menu will open which will bring up all the pre-defined shaders which **come with KNULLI**. At the top of the screen, you will see the folder you are currently in, which is `/usr/share/batocera/shaders`. By selecting `Parent Directory`, you can navigate up to the parent directory of the folder you are currently in.

!!! danger "Known issue: RetroArch top-level file system shortcuts currently do not work with KNULLI"

    Once you've reached the **top level** of the file system (`/`) you can opt to select `Parent Directory` one last time. If you do so, you will end up seeing a list of **shortcuts** to **file system locations**. Instead of the folder icon (:material-folder-open:) you will see a database-like icon (:material-database:) in front of all the options. **Make sure not to enter this menu.**
    
    Once you reach this level of the navigation menu and attempt to reach **any** destination on your SD card from here, all your folders will **appear empty** even though they **are not**. You will **not** be able to find **any** shaders until you **cancel** the operation and bring up the menu again.
    
    You cannot do any **permanent damage**, however, if you are not aware of this issue, you might be led into thinking your shaders are broken or in the wrong place. Most likely, they are not. Most likely, you ran into a bug within RetroArch on KNULLI devices.

### Save your shader setup as a preset

Once you are done setting up your shaders, make sure to **save** the shader preset, either globally or per core or per content directory:

* While the game is running, hold ++"Function"++ and press ++"B"++ to bring up the RetroArch menu.
* In the RetroArch menu, go to *Shaders*, then *Save Preset*, then
    * Pick *Save Global Preset* to make the current shader configuration system default
    * Pick *Save Core Preset* to make the current shader configuration default for the currently selected emulation core
    * Pick *Save Content Directory Preset* to make the current shader configuration default for the currently selected content directory

### RetroArch overrides

**Overrides** can be applied to override the generated configuration on a per-game or per-core level. If your shader setup requires some fine tuning of other emulator settings, you should first make sure to create an override for the system:

* Launch the game you want to apply the overrides to (or a game which uses the core you want to apply the overrides to).
* While the game is running, hold ++"Function"++ and press ++"B"++ to bring up the RetroArch menu.
* In the RetroArch menu, go to *Overrides* and either
    * *Save Core Overrides* to create an override file for the **entire emulation core**.
    * *Save Content Directory Overrides* to create an override file for all games of the current **emulation core** in a **specific folder** (e.g., only for `roms/gb` but not for `roms/gba`).
    * *Save Game Overrides* to create an override file for **the game you are currently running**.

You can also delete existing override files from this menu.

### Adding your own RetroArch shaders

KNULLI already comes with a lot of pre-defined shaders which are stored in the **read-only** part of the KNULLI file system in a folder called `/usr/share/batocera/shaders`. However, you are **not** supposed to **delete** or **add** any shaders there. Instead, KNULLI expects your **own shaders** to be stored in the `shaders` folder in your `userdata`/`SHARE` folder. (If you want to learn more about the `shaders` folder, have a look at the thorough documentation in the [Batocera wiki](https://wiki.batocera.org/emulationstation:shaders_set).)

If you do not have such a folder yet, access your `userdata` folder (e.g., via [network transfer](../../../play/add-games/network-transfer)) and add the `shaders` folder. Afterwards, you can copy all your RetroArch shaders into that folder.

#### Create a shortcut to your own shaders folder

As explained above, navigating from the default shaders folder to your custom shaders folder can be annoying if you have to do it regularly. However, depending on your choice of filesystem, it might be possible to create a shortcut from the read-only shaders folder that comes with KNULLI to your own `shaders` folder. If you regularly deal with your own custom shaders, this feature might come in handy to avoid navigating the entire file system every time you want to find your own shaders.

The easiest way would be to create a symbolic link when your device is starting up. This could be achieved by simply adding/editing a `custom.sh` bash script in your `system` folder:

* Go to your `system` folder (e.g., via [network transfer](../../../play/add-games/network-transfer)).
* If it does not exist yet, create a new text file `custom.sh`.
    * Windows users need to make sure **the file extension is correct**. (Please make sure your file extensions are visible before proceeding!)
* Edit `custom.sh` with a text editor (preferably something like *Notepad++*).
* It might be required to manually assure UTF-8 encoding and Linux line endings!
* If the file is empty, add the line
  ```
  #!/bin/sh
  ```
  at the **top** of the file.
* Now add the line
  ```
  ln -s /userdata/shaders /usr/share/batocera/shaders/userdata-shaders
  ```
  at the **end** of the file.

After rebooting your system, it should now automatically create a link which makes `/userdata/shaders` available at `/usr/share/batocera/shaders/userdata-shaders`. Consequently, when you bring up the menu for **loading**, **prepending**, or **appending** shaders, you should find the subfolder `userdata-shaders` among the other contents of `/usr/share/batocera/shaders`. When entering `userdata-shaders`, you should find all your custom shaders you have stored in `/userdata/shaders`.

!!! info "Permanent link in overlay"

    It would also be possible to store a **permanent** link in the `overlay` file rather than re-creating the link on every boot. To do so, simply [SSH](../../ssh) into the device, create the link with the command shown above and run `batocera-save-overlay` to make the change permanent. However, by creating the link via `custom.sh` on boot, the link would survive re-flashing SD 1 on dual SD card setups and can also be included in your backups of the entire `userdata` folder.
