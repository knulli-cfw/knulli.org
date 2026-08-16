# :material-lightbulb-on-outline: RGB LEDs

KNULLI supports the RGB LEDs of certain devices out of the box (e.g., the RG40XX H/V devices by Anbernic). By default, the RGB LEDs will light in a shade of green that goes well with our KNULLI logo. However, you can, of course, customize your RGB LEDs anyway you like!

Additionally, your RGB LEDs can be configured to indicate low battery and/or battery charging and even play an animation when earning a retro achievement.

!!! warning "Before reporting issues, consider your battery status"

    Some devices have built-in mechanisms to disable RGB entirely when the battery percentage drops below a certain threshold. On those devices, RGB-based battery indication obviously will not work. So, if your device does turn off RGB entirely rather than giving a warning animation, do not panic - this is most likely a device-specific feature outside of the scope of our RGB implementation. (See also: [BatteryPlus](./batteryplus.md))

    Furthermore, be aware that while your device is in a battery indication mode (charging, low battery warning), this mode will override your manual settings. So, if you set up a mode and color and the settings do not seem to stick, make sure they aren't simply overriden by the device currently being in charging or low battery mode.

## Setting up RGB LEDs

If your device has RGB LEDs and the RGB LEDs are supported by your version of KNULLI, you will find the *RGB LED Settings* in the *Device Settings* menu.

* Press ++"Start"++ to bring up the main menu
* Go to *Device Settings*
* Go to *RGB LED Settings*

The options you will find in this menu depend on your device and your KNULLI version.

### Enable RGB LED

This simple toggle allows to turn the RGB LEDs on or off entirely.

### LED mode and color

This section has the options for the **regular** RGB behavior. The settings apply when your device is **not** in low battery mode or charging.

* **Mode** sets the type of animation your RGB LEDs display most of the time. The available options depend on your device.
    * *No Effect* will turn the RGB LEDs off unless you are in low battery mode or charging or you earned a retro achievement.
    * *Static* shows a constant light in primary color
    * *Shimmer* is the default setting and shows a constant light in primary color and a shimmering effect in secondary color
    * *Rainbow* creates a "moving" rainbow effect
    * *Single Rainbow* fades from one random color to the next, creating a constant single-color rainbow animation
    * *Input Pulse* shows a constant light in primary color, highlights the current thumbstick direction in secondary color
    * *Wave* shows a constant light in primary color and a wave effect in secondary color
    * *Knight Rider* moves a red light from left to right and back to remind everyone of your favorite car
* **Color Palette** gives you a large amount of 2-color palettes to choose from, each providing a primary and a secondary color, default setting is *Knulli*
* **Primary Color** lets you pick your primary color (by changing this manually, your palette will change to *Custom*)
* **Secondary Color** lets you pick your secondary color (by changing this manually, your palette will change to *Custom*)
* **Invert Colors (Secondary Zone)** inverts primary/secondary color in your device's secondary zone (if it has one)
* **Palette Mod** adds another effect on top of the chosen mode (if possible)
* **Brightness** sets the *relative* brightness of the RGB LEDs. The higher the value, the brighter the RGB LEDs. If *Adaptive Brightess* is turned *off*, 100% brightness corresponds to highest possible brightness of the RGB LEDs. If *adaptive brightness* is turned *on*, 100% brightness corresponds to 100% of the current *screen brightness*.
* **Adaptive Brightness** automatically adjusts LED brightness when screen brightness is increased/lowered. Can be turned *on* and *off*.

### Battery Charge Indication

This section allows to configure your RGB LEDs for battery indication.

* **Low Battery Threshold** sets the threshold for low battery indication. If the battery charge is below the given threshold, the RGB LEDs will switch to low-battery indication mode. If the threshold is set to 0, low battery indication will be disabled.
    * While the battery is very low (5% or below), the RGB LED warning color will be red.
    * While the battery is low (below threshold but above 5%), the RGB LED warning color will be yellow.
* **Low Battery Indication** allows you to pick the type of low battery indication (*none*, *notification*, or *continuous* (default))
* **Battery Charging Indication** allows you to pick the type of battery charging indication (*none*, *notification*, or *continuous* (default)).

### Retro Achievement Indication

* **Achievement Effect** plays a short RGB effect every time you earn a RetroAchievement. Can be turned *on* and *off*.
