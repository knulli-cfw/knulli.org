# :material-battery-charging-60: BatteryPlus

Great Scott! 1.21 Gigawatts!!

BatteryPlus is a voltage-based battery percentage system.
Instead of trusting often inaccurate PMIC-reported values, it calculates battery % directly from measured voltage.

Result:

* Consistent behavior across devices
* No random jumps or resets
* Percent reflects actual position on the voltage curve

!!! info "PMIC vs voltage"

    Depending on the device and its battery, PMIC-reported values are sometimes poorly estimated.
    Hence, battery percentage sometimes appears "jumpy" or overcautious.
    For example, on Anbernic H700 devices of the RG XX series, the PMIC-reported battery percentage will be at 0-1% when in reality you have about an hour of play time left!
    
    To the contrary, voltage-based calculation is more accurate.
    However, you should be aware that depending on the device and the different software options installed, you might encounter confusing behavior.
    For example, on the TrimUI Smart Pro and Brick (Hammer) devices, RGB is disabled automatically when the PMIC-reported value hits a certain threshold (see also: [RGB LEDs](./rgb-leds.md)).
    Depending on the difference between the PMIC-reported value and the voltage-based calculation and the low battery warning threshold set in the RGB menu, you might never actually get the low battery warning in voltage mode.
    Also, some applications might still get their battery estimation directly via PMIC, bypassing BatteryPlus entirely.
    
## Calibration

Devices ship with a baseline calibration, but accuracy improves after a quick one-time setup.

To calibrate BatteryPlus on your device,

* power on the device
* plug into a wall charger
* let it charge until it reaches 100%
    * **must** be done while **powered on**
    * disable auto suspend/shutdown if needed
* unplug the charger
* wait ~15 seconds

You can verify if your calibration was complete by pressing ++"Start"++ to bring up the main menu, then go to *System*, then *Information* where you can check whether BatteryPlus is calibrated.

!!! info "Multi-SD setups"

    If a different device/environment is detected, calibration resets to defaults.
    In these cases the system info will reflect the uncalibrated state.


## Modes

BatteryPlus supports two modes:

* `voltage` (default) — recommended
* `pmic` — fallback to hardware-reported percentage

To switch modes, find `knulli.conf` in the `system` folder of your [`userdata` folder](../play/add-games/game-storage.md) and edit the file with a plain text editor (e.g., Notepad++).
Find the line that says

```
system.batteryplus.mode=voltage
```

and change it to:

```
system.batteryplus.mode=pmic
```

A reboot might be required to restart every service that's listening to BatteryPlus updates.

## Notes

* Calibration establishes the 100% voltage anchor (`V_FULL`).
* If you
    * charge while powered off,
    * unplug the charger, and
    * then boot the device (not charging),
        and it does not show 100%, calibration may be required!
* Calibration data is stored on the share/userdata partition!
