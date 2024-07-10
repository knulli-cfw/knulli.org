# :material-image-sync-outline: Boot Logo
   
For a wholesome KNULLI experience, you may want to replace your boot logo to match the style of your theme. The KNULLI boot logo is stored on your primary SD card, on the `batocera` partition. If you want to replace your boot logo, simply follow the steps below.

* Create a new **bitmap** file (`bootlogo.bmp`) that has the exact **same resolution** as your built-in display (e.g. 640x480 for the Anbernic RG35XX Plus/H/SP/2024 series)
* Shut down your KNULLI device
* Eject the primary SD card from your KNULLI device and insert it into your computer
* Find the `batocera` partition on your SD card (and, if you are using Windows, **ignore** any warnings about broken/unformatted drives!)
* Locate `bootlogo.bmp` on your `batocera` partition and replace it with your new boot logo
    * (You might want to back up the original file before you replace it)
* Eject the SD card from your computer and put it back into your KNULLI device
* Turn on your KNULLI device and enjoy your custom boot logo

!!! info "Boot logo and splash screen"

    The **boot logo** is an image which is displayed while KNULLI is booting, from the moment the device is turned on until the moment EmulationStation is launched. The EmulationStation **splash screen** is displayed while EmulationStation is loading, scanning for games, or shutting down. The **splash screen** is controlled by the **theme** of your KNULLI installation. the **boot logo** on the other hand is part of the boot partition KNULLI is installed on.
