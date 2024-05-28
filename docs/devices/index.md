# Device Support

We are working on KNULLI versions for a variety of ARM based devices.

There are two main categories, those that have GPU support and include Emulation Station as their main interface, and others that are currently framebuffer based only (legacy) that typically use Simplemenu as the main interface.

!!! info "Not all devices we are currently working on have received a public release of KNULLI, yet. To find out if KNULLI is already available for your device, visit the [Releases page](https://github.com/knulli-cfw/distribution/releases/latest). You will find a list of all currently supported devices in the `Installation Package Downloads` section. If you find a package for your device there, you should follow the [Installation guide](../../play/install) to install KNULLI on your device. If your device is **not** listed there, please be patient. There is no public release available, yet. Do *not* attempt to install a package for a different device - it will not work."

## GPU supported devices

| Manufacturer | Device | CPU / Architecture | Kernel | GL driver | Interface |
| -- | -- | -- | -- | -- | -- |
| Anbernic | [RG35xx Original](anbernic/rg35xx.md) | Actions Semi 7039 (ARM) | Actions BSP 4.7.190 | PowerVR SGX544 | fbdev + Emulation Station / Simplemenu |
| Anbernic | [RG35XX Plus](anbernic/rg35xx-plus.md) | Allwinner H700 (ARM) | Allwinner BSP 4.9.170 | Mali G31 | fbdev + Emulation Station |
| Anbernic | [RG35XX H](anbernic/rg35xx-h.md) | Allwinner H700 (ARM) | Allwinner BSP 4.9.170 | Mali G31 | fbdev + Emulation Station |
| Anbernic | [RG35XX 2024](anbernic/rg35xx-2024.md) | Allwinner H700 (ARM) | Allwinner BSP 4.9.170 | Mali G31 | fbdev + Emulation Station |
| Orange Pi | [Orange Pi Zero 2w](orange-pi/orange-pi-zero-2w.md) | Allwinner H618 / Mali G31 (ARMv8-A) | Mainline Linux | Panfrost | Weston + Emulation Station |
| Powkiddy | [Powkiddy A12](powkiddy/powkiddy-a12.md) | Rockchip RK3128 / Mali 400 MP4 (ARMv7-A) | Rockchip BSP 4.4 | Mali | Weston + Emulation Station |
| Powkiddy | [Powkiddy A13](powkiddy/powkiddy-a13.md) | Rockchip RK3128 / Mali 400 MP4 (ARMv7-A) | Rockchip BSP 4.4 | Mali | Weston + Emulation Station |
| Powkiddy | [RGB30](powkiddy/rgb30.md) | Rockchip RK3566 (ARM) | Rockchip BSP 4.19 | Mali | KMS/DRM + Emulation Station |
| Sega | [Astro City Mini](sega/astro-city-mini.md) | Allwinner R16 / Mali 400 MP4 (ARMv7-A) | Allwinner BSP 4.0 | Mali | fbdev + Emulationstation |
| SJGAM | [M16](sjgam/m17.md) | Rockchip RK3126 / Mali 400 MP4 (ARMv7-A) | Rockchip BSP 4.4 | Mali | Weston + Emulation Station |
| Taito | [Egret II Mini](taito/egret-ii-mini.md) | Allwinner R16 / Mali 400 MP4 (ARMv7-A) | Allwinner BSP 4.0 | Mali | fbdev + Emulationstation |
| Unbranded | [PocketGo S30](unbranded/pocketgo-s30.md) | Allwinner A33 / Mali 400 MP4 (ARMv7-A) | Allwinner BSP 4.4 | Mali | fbdev + Emulation Station |

## Legacy devices

| Manufacturer | Device | CPU / Architecture | Kernel | GL driver | Interface |
| -- | -- | -- | -- | -- | -- |
| Capcom | [Retro Station Tron](capcom/retro-station-tro.md) | Actions Semi 7051 (ARM) |Actions Semi BSP 3.0.8 | framebuffer only | RetroArch + Simplemenu |
| Powkiddy | [x51](powkiddy/x51.md) | Actions Semi 7051 | Actions BSP 3.4 | PowerVR SGX544 (disabled) | fbdev + Simplemenu |
| Unico | [Neo Geo Mini](unico/neo-geo-mini.md) | Actions Semi (MIPS) |Actions Semi BSP 3.0.8 | framebuffer only | RetroArch + Simplemenu |
| Unico | [Arcade Stick Pro](unico/arcade-stick-pro.md) | Actions Semi 7051 (ARM) | Actions Semi BSP 3.0.8 | framebuffer only | RetroArch + Simplemenu |
| Unico | [MVSX](unico/mvsx.md) | Actions Semi 7051 (ARM)) | Actions Semi BSP 3.0.8 | framebuffer only | RetroArch + Simplemenu |
