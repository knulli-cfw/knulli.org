# :material-lightbulb-on-outline: RGB LEDs

KNULLI supports the RGB LEDs of certain devices out of the box (e.g., the RG40XX H/V devices by Anbernic). By default, the RGB LEDs will light in a shade of green that goes well with our KNULLI logo. However, you can, of course, change the **default mode** of your RGB LEDs anyway you like!

Additionally to the customizable **default mode**, the RGB LEDs will inform you about your **battery status** while the device is turned on. Currently, Knulli has three supported **battery modes**:

* While the battery is **charging**, the RGB LEDs will **blink slowly** in **default green** until the battery is completely charged. When completely charged, the RGB LEDs will return to the default mode.
* While the battery is **low (20% or below)**, the RGB LEDs will **blink slowly** in **yellow**.
* While the battery is **very low (5% or below)**, the RGB LEDs will **blink slowly** in **red**.

Finally, if you are hunting for **RetroAchievements**, the RGB LEDs will honor every achievement notification with a short rainbow swirl.

## Setting up RGB LEDs

If the RGB LEDs of your device are supported by KNULLI, you will find the *RGB Settings* tool in the *Tools* section of your KNULLI device. In this menu, you can set up the RGB LEDs according to your preferences.

!!! info "(Re-)starting the RGB LED service"

    If your LED cannot be turned on from the *RGB Settings* menu, chances are that the `ANALOG_STICK_LED` service is not running. To launch that service, press the ++"Start"++ button on the home screen to bring up the main menu, head to *System Settings*, then head to *Services*. In the *Services* menu, turn **on** `ANALOG_STICK_LED`.

### Modes

With this setting, you can set up the **default mode** of your RGB LEDs. Depending on your device, you will find a variety of *Modes* to choose from, such as *Static* (meaning a constant display of your color of choice) or *Breathing* (meaning the LEDs fading on and off), or *Rainbow* modes where you get random colors changing automatically. By setting *Mode* to *Off*, you disable the **default mode**. This will turn the LEDs off most of the time, however, they can still be used for battery indication and RetroAchievement indication as explained further below.

### Transition speed

Transition speed only applieds to automatic modes such as *Single Rainbow* and *Multi Rainbow*. Other modes might not be influenced by this value at all.

!!! warning "Epilepsy warning"

    On some devices like the RG40XX H, the speed range starts at 0 and ends at 255. However, you will already get a pretty fast lightshow at values of 50 or so. Please treat this setting carefully if you or any person who might handle the device has been diagnosed with epilepsy. This level of fast-flickering light may cause seizures!


### Brightness

Brightness sets the LED brightness value. Be aware that brightness automatically lowers and increases with screen brightness. Find a brightness value which works comfortable for you on any screen brightness you might be using.

### Color selection

With this setting, you can set up the color for single-color modes such as *Static* or *Breathing*.

### Low battery mode

The *Low Battery Mode* setting determines at which battery charge percentage the RGB LEDs should start to give you a low battery warning. By setting this value to *0*, you will **turn it off** entirely. The default value for the *Low Battery Mode* is *20%*.

### Charging mode

If you do not want the RGB LEDs to indicate if the battery is charging, you can use this setting to turn off the charging indication.

### Retroachievements mode

If you do not want the RGB LEDs to give you a rainbow swirl when you earn a RetroAchievement, you can use this setting to turn off the RetroAchievements mode.
