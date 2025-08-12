# :material-panorama-variant-outline: KNULLI Shaders
!!! warning "Difference between KNULLI (Batocera) and RetroArch"
    This method differs from how to [add RetroArch shaders](../../../configure/retroarch/shaders) but is more in line with the KNULLI/Batocera mindset.

Knulli allows custom shaders to be made available directly in EmulationStation.

Therefor they can be applied:

* **Per game**: Press and hold the launch button (++"A"++ or ++"B"++ depending on your setup) on the game you want the shader to be appplied to, then go to *Advanced Game Options*, then *Game Rendering & Shaders*, then *Shader Set* and select the shader you want.

* **For an entire system**: Press the ++"Start"++ button to open the main menu then go to *Game Settings*, then *Per System Advanced Configuration*. Select the system you want to apply the shader to, then go to *Game Rendering & Shaders*, then *Shader Set* and select the shader you want.


!!! info "This is just an example"
    We will use one of the [Shimmerless](https://github.com/Woohyun-Kang/Sharp-Shimmerless-Shader) shaders as an example here, but the method should be applicable to any compatible shader. In the current releases of Knulli, the sharp-shimmerless shaders are included in the default build so while these instructions are still a valid example, it is possible to use sharp-shimmerless either directly in retroarch or by creating the config file and pointing it to the correct shader in the file system.

## Folders preparation

[Connect](../../../play/add-games/network-transfer/) to your handheld and create a `shaders` folder in `/userdata` (if it does not exist yet). Populate it as described below.

``` bash
/shaders
 └─ sharp-shimmerless.glslp
 └─ configs/
    └─ sharp-shimmerless/
        └─ rendering-defaults.yml
 └─ shaders/
    └─ sharp-shimmerless.glsl

```

* The `*.glsp` and `*.glsl` files used in this example can be extracted from the [Shimmerless GitHub repository](https://github.com/Woohyun-Kang/Sharp-Shimmerless-Shader).
* `rendering-defaults.yml` need to be manually created.

## Editing rendering-defaults.yml

After creating a new empty text file called `rendering-defaults.yml`, you can edit it with a text editor of your choice. (For Windows users, we strongly recommend [Notepad++](https://notepad-plus-plus.org).)

```
default:
  shader: sharp-shimmerless
```

Make sure that `sharp-shimmerless.glslp` points to the correct subfolder and glsl file (should be the case in our example).
```
shaders = 1

shader0 = shaders/sharp-shimmerless.glsl
filter_linear0 = true
```

Press the ++"Start"++ button to open the main menu, go to *Game Settings* and select *Update Gamelists* to make the shader available on your handheld.

Enjoy!

## Advance setup

More details are available here: [Batocera wiki](https://wiki.batocera.org/emulationstation:shaders_set)
