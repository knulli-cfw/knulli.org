# Allwinner H700 Firmware extraction

The following page describes how to extract the bootloader, u-boot, and kernel from an Allwinner H700 based device. The following devices are based on this processor and these instructions are valid for all of them:

* RG35xx Plus
* RG35xx H
* RG35xx 2024

## Tools and repositories required

* [android unpackbootimg](https://github.com/anestisb/android-unpackbootimg) to unpack/pack and create boot.img
* [OrangePi Build](https://github.com/orangepi-xunlong/orangepi-build) includes all the necessary tools for repackaging the boot-package (u-boot)
* [OpenixCard](https://github.com/YuzukiTsuru/OpenixCard) to extract the stock firmware image (in AWIMAGE format)

## Firmware building blocks

There are four different blocks that are required for the Allwinner H700 BSP to work.

### Boot0 

The Boot0 is the secondary program-loader, and it's loaded by the BROM during the boot-process. You can read more about this in the linux sunxi [boot0 page](https://linux-sunxi.org/Boot0)

The typical location of this boot0 is either on position 8KB or 256KB. Stock uses 8KB position

The boot0 has the following signature:

``` log linenums="1"
00000000  be 04 00 ea 65 47 4f 4e  2e 42 54 30 a7 f4 1c 31  |....eGON.BT0...1|
00000010  00 00 01 00 30 00 00 00  00 00 00 00 00 00 02 00  |....0...........|
00000020  00 00 02 00 00 00 00 00  00 00 00 00 34 2e 30 00  |............4.0.|
00000030  00 00 00 00 03 00 00 00  a0 02 00 00 08 00 00 00  |................|
00000040  08 08 08 08 0e 0e 0e 0e  0e 0e 00 00 bb bb 87 78  |...............x|
00000050  0a 31 00 00 00 00 00 00  00 00 00 00 34 00 00 00  |.1..........4...|
00000060  1b 00 00 00 33 00 00 00  03 00 00 00 00 00 00 00  |....3...........|
00000070  00 00 00 00 04 00 00 00  72 00 00 00 00 00 00 00  |........r.......|
00000080  09 00 00 00 00 00 00 00  00 00 00 00 24 00 00 00  |............$...|
00000090  00 00 00 00 00 00 00 00  01 00 00 00 00 00 00 00  |................|
000000a0  80 80 80 40 33 66 2f 40  00 00 00 00 00 00 00 00  |...@3f/@........|
000000b0  60 0c 00 02 00 00 00 00  00 00 00 00 08 00 02 01  |`...............|
000000c0  ff ff 00 00 08 01 02 01  ff ff 00 00 01 00 00 00  |................|
000000d0  08 09 03 ff ff ff 00 00  08 0a 03 ff ff ff 00 00  |................|
000000e0  08 0b 03 ff ff ff 00 00  08 0c 03 ff ff ff 00 00  |................|
000000f0  00 52 41 57 85 e9 00 00  06 02 02 01 03 ff 00 00  |.RAW............|
00000100  06 03 02 01 03 ff 00 00  06 01 02 01 03 ff 00 00  |................|
00000110  06 00 02 01 03 ff 00 00  06 05 02 01 03 ff 00 00  |................|
00000120  06 04 02 01 03 ff 00 00  00 00 00 00 00 00 00 00  |................|
00000130  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  |................|
[...]
```


### Boot package

Boot package contains the u-boot and the device tree (DT) of the device. The boot package is located at an offset of 16,400 KB.

The boot package has the following signature:

``` log linenums="1"
00000000  73 75 6e 78 69 2d 70 61  63 6b 61 67 65 00 00 00  |sunxi-package...|
00000010  00 98 11 89 a1 de f6 b7  00 00 00 00 00 00 00 00  |................|
00000020  04 00 00 00 00 00 14 00  00 00 00 00 00 00 00 00  |................|
00000030  00 00 00 00 00 00 00 00  00 00 00 00 4d 49 45 3b  |............MIE;|
00000040  75 2d 62 6f 6f 74 00 00  00 00 00 00 00 00 00 00  |u-boot..........|
00000050  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  |................|
*
00000080  00 08 00 00 00 00 10 00  00 00 00 00 03 00 00 00  |................|
00000090  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  |................|
*
000001a0  00 00 00 00 00 00 00 00  00 00 00 00 49 49 45 3b  |............IIE;|
000001b0  6d 6f 6e 69 74 6f 72 00  00 00 00 00 00 00 00 00  |monitor.........|
000001c0  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  |................|
*
000001f0  00 08 10 00 d0 a2 01 00  00 00 00 00 03 00 00 00  |................|
00000200  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  |................|
*
00000310  00 00 00 00 00 00 00 00  00 00 00 00 49 49 45 3b  |............IIE;|
00000320  64 74 62 6f 00 00 00 00  00 00 00 00 00 00 00 00  |dtbo............|
00000330  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  |................|
*
00000360  00 ac 11 00 20 09 00 00  00 00 00 00 03 00 00 00  |.... ...........|
00000370  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  |................|
*
00000480  00 00 00 00 00 00 00 00  00 00 00 00 49 49 45 3b  |............IIE;|
00000490  64 74 62 00 00 00 00 00  00 00 00 00 00 00 00 00  |dtb.............|
000004a0  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  |................|
*
000004d0  00 b8 11 00 00 34 02 00  00 00 00 00 03 00 00 00  |.....4..........|
000004e0  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  |................|
*
000005f0  00 00 00 00 00 00 00 00  00 00 00 00 49 49 45 3b  |............IIE;|
00000600  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  |................|
[...]
```

The u-boot is included in the boot-package.fex image

### Boot Image  

Contains the kernel, ramdisk, and bootargs.

The boot.img goes into the first partition of the sdcard with an offset 36,864 KB.

Boot.img follows an android boot image and can be unpacked (and packed again) with the [android unpackbootimg](https://github.com/anestisb/android-unpackbootimg)

To extract the boot.img to the folder ``boot_image``:

```bash

$ unpackbootimg -i boot.img -o boot_image/

BOARD_KERNEL_CMDLINE .BT0
BOARD_KERNEL_BASE 645ee563
BOARD_NAME  for boot0

BOARD_PAGE_SIZE 1948279909
BOARD_HASH_TYPE sha256
BOARD_KERNEL_OFFSET 00008000
BOARD_RAMDISK_OFFSET fd058b12
BOARD_SECOND_OFFSET 9c087c09
BOARD_TAGS_OFFSET 080a7c03
BOARD_OS_VERSION 49.91.109
BOARD_OS_PATCH_LEVEL 2070-12
BOARD_DT_SIZE 1634541679
```

The following files will be extracted into the ``boot_image`` folder:

```bash
boot.img-base   boot.img-cmdline  boot.img-hash       boot.img-oslevel    
boot.img-pagesize    boot.img-ramdiskoff  boot.img-secondoff  boot.img-zImage
boot.img-board  boot.img-dtb      boot.img-kerneloff  boot.img-osversion  
boot.img-ramdisk.gz  boot.img-second      boot.img-tagsoff
```

To repack the boot.img after doing any changes:

```bash
mkbootimg --kernel boot.img-zImage --ramdisk boot.img-ramdisk.gz --dt boot.img-dtb \
--board sun50i_arm64 --base 40078000 --kernel_offset 00008000 --ramdisk_offset 01f88000 \
--second_offset 00e88000 --tags_offset fff88100 --cmdline "earlyprintk=ttyS0,115200 
loglevel=8 initcall_debug=0 console=tty0 console=ttyS0,115200 rootwait root=/dev/mmcblk0p3 
init=/sbin/init" -o updated_boot.img
```

### Env Image

Env image contains the environment variables used by u-boot. 

The image can be extracted just with ``strings env.img > env.txt``.

The environment variables follow this format:

```bash
earlyprintk=sunxi-uart,0x05000000
initcall_debug=0
console=ttyS0,115200
nand_root=/dev/nand0p4
mmc_root=/dev/mmcblk0p5
init=/init
loglevel=4
selinux=0
cma=64M
mac=
wifi_mac=
bt_mac=
specialstr=
keybox_list=hdcpkey,widevine
setargs_nand=setenv bootargs earlyprintk=${earlyprintk} initcall_debug=${initcall_debug} console=${console} loglevel=${loglevel} root=${nand_root} init=${init} partitions=${partitions} cma=${cma} snum=${snum} mac_addr=${mac} wifi_mac=${wifi_mac} bt_mac=${bt_mac} selinux=${selinux} specialstr=${specialstr} gpt=1
setargs_mmc=setenv  bootargs earlyprintk=${earlyprintk} initcall_debug=${initcall_debug} console=${console} loglevel=${loglevel} root=${mmc_root} rootwait init=${init} partitions=${partitions} cma=${cma} snum=${snum} mac_addr=${mac} wifi_mac=${wifi_mac} bt_mac=${bt_mac} selinux=${selinux} specialstr=${specialstr} gpt=1
boot_normal=sunxi_flash read 45000000 boot;bootm 45000000
boot_recovery=sunxi_flash read 45000000 recovery;bootm 45000000
boot_fastboot=fastboot
recovery_key_value_max=0x13
recovery_key_value_min=0x10
fastboot_key_value_max=0x8
fastboot_key_value_min=0x2
bootdelay=0
bootcmd=run setargs_nand boot_normal
```


To convert a valid environment file (e.g. ``env.cmd``) into an environment image you have to use the ``mkenvimage`` command:

```bash
mkenvimage -s 0x1000000 -o env.img env.txt 
```

## Obtaining the stock firmware

There are three ways to obtain the stock firmware:

* Obtain the original recovery PhoenixCard image from Garlic 2.0 bootloader repo
* Use the SDCARD included with your device
* Download the firmware from [Anbernic's website](https://win.anbernic.com/download/360.html) (working link as of 2024/04/16):
    * Note: download the 16GB firmware (e.g. ``cxm_35xxh-en16gb-240330_2024-04-01_0402.zip``)

## Firmware extraction

This section describes the different methods to extract the firmware

### Using the original PhoenixCard firmware

The original recovery firmware image (``h700_linux_tv_uart0_20231108.zip``) was posted as part of the Garlic 2.0 development. That included the bootloader for the original RG35XX as well as the one for the RG53XX Plus. You can download it from [here](https://drive.google.com/file/d/1Gg1e9GruSqlN2lqLJUG7mFIRNbe5bQjN/edit) (original link from the [GarlicOS bootloader GitHub repository](https://github.com/GarlicOS/bootloader_anbernic_rg35xxplus?tab=readme-ov-file))

This firmware image can be extracted with several tools, but OpenixCard works well for these types of Allwinner firmware images. 
With the image downloaded and OpenixCard tools installed, first extract the image from the archive:

```bash
$ unzip h700_linux_tv_uart0_20231108.zip
Archive:  h700_linux_tv_uart0_20231108.zip
  inflating: h700_linux_tv_uart0_20231108.img
```

Then run OpenixCard to extract the actual image:

```bash
$ OpenixCard -u h700_linux_tv_uart0_20231108.img
 _____             _     _____           _ 
|     |___ ___ ___|_|_ _|     |___ ___ _| |
|  |  | . | -_|   | |_'_|   --| .'|  _| . |
|_____|  _|___|_|_|_|_,_|_____|__,|_| |___|
      |_| Version: 9ffafbb Commit: 1
Copyright (c) 2022, YuzukiTsuru <GloomyGhost@GloomyGhost.com>

[OpenixCard INFO] Converting input file: h700_linux_tv_uart0_20231108.img
[OpenixIMG INFO] Decrypting IMG header...
[OpenixIMG INFO] IMG version is: 0x300
[OpenixIMG INFO] Decrypting IMG file contents...
[OpenixIMG INFO] Writing the IMG config data...
[OpenixCard INFO] Unpack Done! Your image file is at h700_linux_tv_uart0_20231108.img.dump
```

The image will be extracted to the ``h700_linux_tv_uart0_20231108.img.dump`` folder, and it should contain the following files:

```bash
arisc.fex     boot0_nand.fex    boot-resource.fex  dlinfo.fex  rootfs.fex      sunxi_mbr.fex      toc1.fex           usbtool.fex         vmlinux.fex
aultls32.fex  boot0_sdcard.fex  cardscript.fex     env.fex     split_xxxx.fex  sys_config.fex     u-boot-crash.fex   Vboot.fex           Vrootfs.fex
aultools.fex  boot.fex          cardtool.fex       fes1.fex    sunxi.fex       sys_partition.fex  u-boot.fex         Vboot-resource.fex
board.fex     boot_package.fex  config.fex         image.cfg   sunxi_gpt.fex   toc0.fex           usbtool_crash.fex  Venv.fex
```

From the files extracted you can identify the four files mentioned above:

1. boot0_sdcard.fex is the boot0
2. boot_package.fex is the boot package image
3. boot-resource.fex is the boot.img
4. env.fex is the env.img

### Using the stock SDCARD or image

You can use the stock sdcard that came with your console, or download the image from [anbernic's firmware page](https://win.anbernic.com/download/360.html).

This method requires to play with some offsets to get the correct boot0 and boot_package partitions.

If you have the firmware image (RG35XXH-EN16GB-OS240330.IMG), then you can extract boot0 with the dd command:

```bash
$ dd if=RG35XXH-EN16GB-OS240330.IMG of=boot0.img bs=1024 skip=8 count=64
```

And for boot-package:

```bash
$ dd if=RG35XXH-EN16GB-OS240330.IMG of=boot_package.img bs=1024 skip=16400 count=20464
```

For boot.img and env.img, those are coming directly from partitions 1 and 2 of that image. To extract those, first run fdisk -l against the image:

```bash
$ fdisk -l RG35XXH-EN16GB-OS240330.IMG
Disk RG35XXH-EN16GB-OS240330.IMG: 14.41 GiB, 15476981760 bytes, 30228480 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: gpt
Disk identifier: AB6F3888-569A-4926-9668-80941DCB40BC

Device                          Start      End  Sectors  Size Type
RG35XXH-EN16GB-OS240330.IMG1    73728  8880127  8806400  4.2G Microsoft basic data
RG35XXH-EN16GB-OS240330.IMG2  8880128  8945663    65536   32M Microsoft basic data
RG35XXH-EN16GB-OS240330.IMG3  8945664  8978431    32768   16M Microsoft basic data
RG35XXH-EN16GB-OS240330.IMG4  8978432  9109503   131072   64M Microsoft basic data
RG35XXH-EN16GB-OS240330.IMG5  9109504 25886719 16777216    8G Microsoft basic data
RG35XXH-EN16GB-OS240330.IMG6 25886720 30226431  4339712  2.1G Microsoft basic data
```

Then extract partitions 1 and 2 with:

```bash
dd if=RG35XXH-EN16GB-OS240330.IMG of=boot.img bs=512 skip=73728 count=8806400
dd if=RG35XXH-EN16GB-OS240330.IMG of=env.img bs=512 skip=8880128 count=8945663
```

If you use the SDCARD, just replace ``RG35XXH-EN16GB-OS240330.IMG`` with the device of your sdcard. In this example is /dev/sdh but you will need to identify the correct device.

```bash
$ sudo dd if=/dev/sdh of=boot0.img bs=1024 skip=8 count=64
```

And for boot-package:

```bash
$ sudo dd if=/dev/sdh of=boot_package.img bs=1024 skip=16400 count=20464
```

To extract the boot.img and env.img (partitions 1 and 2) we can just dump the sdcard partitions directly:

```bash
$ sudo dd if=/dev/sdh1 of=boot.img bs=1024
$ sudo dd if=/dev/sdh2 of=env.img bs=1024
```

## Putting everything back together

Once you have the main elements (boot0.img, boot-package.img, boot.img, and env.img) you can reconstruct a working SDCARD:

* Create a new gpt based SDCARD with 4 partitions and make sure the first partition starts at block 73728.
* Flash the internal partitions boot0 and boot_package.img:

```bash
sudo dd if=boot0.img of=/dev/sdh bs=1024 seek=8
sudo dd if=boot_package.img of=/dev/sdh bs=1024 seek=16400
```

* Flash the boot.img and env.img

```bash
sudo dd if=boot.img of=/dev/sdh1 bs=1024
sudo dd if=env.img of=/dev/sdh2 bs=1024
```

Partition 3 of the sdcard is boot-resource, that typically contains ``bootlogo.bmp`` that is the boot splash screen logo, as well as the rootfs in squashfs format (``boot/batocera``).


