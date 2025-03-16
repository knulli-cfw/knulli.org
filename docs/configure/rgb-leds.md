# :material-lightbulb-on-outline: RGB LEDs

KNULLI supports the RGB LEDs of certain devices out of the box (e.g., the RG40XX H/V devices by Anbernic). By default, the RGB LEDs will light in a shade of green that goes well with our KNULLI logo. However, you can, of course, customize your RGB LEDs anyway you like!

Additionally, your RGB LEDs can be configured to indicate low battery and/or battery charging and even play an animation when earning a retro achievement.

## Setting up RGB LEDs

If your device has RGB LEDs and the RGB LEDs are supported by your version of KNULLI, you will find the *RGB LED Settings* in the *Device Settings* menu.

* Press ++"Start"++ to bring up the main menu
* Go to *Device Settings*
* Go to *RGB LED Settings*

The options you will find in this menu depend on your device and your KNULLI version.

### Regular mode and color

This section has the options for the **regular** RGB behavior. The settings apply when your device is **not** in low battery mode or charging.

* **Mode** sets the type of animation your RGB LEDs display most of the time. The available options depend on your device.
    * *Off* will turn the RGB LEDs off unless you are in low battery mode or charging or you earned a retro achievement.
    * *Static* is the default setting and shows just constant light in a single color
    * *Breathing (fast)* fades the RGB LEDs on and off at a fast speed
    * *Breathing (medium)* fades the RGB LEDs on and off at a medium speed
    * *Breathing (slow)* fades the RGB LEDs on and off at a slow speed
    * *Single Rainbow* fades from one random color to the next, creating a constant single-color rainbow animation
    * *Multi Rainbow* creates a "moving" rainbow effect
* **Brightness** sets the *relative* brightness of the RGB LEDs. The higher the value, the brighter the RGB LEDs. If *Adaptive Brightess* is turned *off*, 100% brightness corresponds to highest possible brightness of the RGB LEDs. If *adaptive brightness* is turned *on*, 100% brightness corresponds to 100% of the current *screen brightness*.
* **Adaptive Brightness** automatically adjusts LED brightness when screen brightness is increased/lowered. Can be turned *on* and *off*.
* **Speed** adjusts the animation speed for some animations. **Does not apply to all LED modes!**
* **Red** adjusts the amount of red in your RGB color.
* **Green** adjusts the amount of green in your RGB color.
* **Blue** adjusts the amount of blue in your RGB color.
* **Restore Default Colors** restores the default KNULLI green.

!!! warning "Epilepsy warning"

    Please be careful with the **speed** setting if you or any person who might handle the device has been diagnosed with photosensitive epilepsy. Keep in mind that fast-flickering lights may cause seizures!


### Battery Charge Indication

This section allows to configure your RGB LEDs for battery indication.

* **Low Battery Threshold** sets the threshold for low battery indication. If the battery charge is below the given threshold, the RGB LEDs will switch to low-battery indication mode. If the threshold is set to 0, low battery indication will be disabled.
    * While the battery is very low (5% or below), the RGB LEDs will blink slowly in red.
    * While the battery is low (below threshold but above 5%), the RGB LEDs will blink slowly in yellow.
* **Battery Charging** will make the RGB LEDs blink slowly in default green while the battery is charging. Can be turned *on* and *off*.
