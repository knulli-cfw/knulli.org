# :material-panorama-variant-outline: Knulli Shaders
!!! warning "Knulli(Batocera) <> Retroarch"
    This method differs from the [RetroArch shader](../../../configure/retroarch/shaders) one but is more in line with the Batocera mindset.

Knulli allows custom shaders to be made available directly in emulationstation.

Therefor they can be applied:

* **Per game** : Long ++"A"++ press on the game you want the shader to be appplied then go to `Advanced game options > Game rendering & shaders > Shader set` and select the shader you want

* **For an entire system** : Press the ++"Start"++ button to open the main menu then go to `Game settings > Per system advanced configuration` , select the system then go to `Game rendering & shaders > Shader set` and select the shader you want.


!!! info
    We will use one of the [Shimmerless](https://github.com/Woohyun-Kang/Sharp-Shimmerless-Shader) shaders as an example here but it should apply to any compatible shader

## Folders preparation

[Connect](../../../play/add-games/network-transfer/) to your handled and create a `shaders` folder in `/userdata` ( if it does not exist yet )

Populate it as described bellow.

``` bash
/shaders
 └─ sharp-shimmerless.glslp
 └─ configs/
    └─ sharp-shimmerless/
        └─ rendering-defaults.yml
 └─ shaders/
    └─ sharp-shimmerless.glsl

```
`*.glsp` and `*.glsl` are extracted from the [Shimmerless](https://github.com/Woohyun-Kang/Sharp-Shimmerless-Shader) repo.

`rendering-defaults.yml` need to be manually created.

## Editing rendering-defaults.yml

Add those lines to the `rendering-defaults.yml` file
```
default:
  shader: sharp-shimmerless
```

Make sure that `sharp-shimmerless.glslp` point to the correct subfolder and glsl file ( should be the case in our example )
```
shaders = 1

shader0 = shaders/sharp-shimmerless.glsl
filter_linear0 = true
```

Press the ++"Start"++ button to open the main menu, go to *Game settings* and select *Update gamelists*.

Enjoy !

## Advance setup

More details are available here : [Batocera wiki](https://wiki.batocera.org/emulationstation:shaders_set)