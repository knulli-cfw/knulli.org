# :material-wifi: Networking

Many devices which are supported by KNULLI are capable of connecting to the internet as well as local networks. In most cases, this is achieved by a built-in Wi-Fi adapter. However, KNULLI also supports network connection via USB dongles.

## Wi-Fi

!!! danger "WPA3 issues"

    Some users experienced issues when connecting their device to a WPA3-protected Wi-Fi. If your device does not connect to your local Wi-Fi, make sure that it is protected with WPA2, **not** WPA3.

If your device has a built-in Wi-Fi adapter, you can set it up directly via KNULLI. Press the ++"Start"++ button to open the main menu, go to *Network settings* where you can configure your Wi-Fi connection. In the lower *Settings* section, enable Wi-Fi, then select your Wi-Fi by its SSID, enter your Wi-Fi key, and leave the menu to connect to your Wi-Fi.

In the section above, you can see whether you are currently connected to Wi-Fi, see your current IP address and toggle the network indicator on or off.

!!! warning "Password protection"

    By default, your KNULLI device does not require a root password to access your device. Consequently, as soon as you connect to a network, the data on your device becomes accessible in your local network without any password protection. While this might be convenient within your own home, it might be a severe security risk when connecting to a network which is not under your control. We strongly suggest to enable **additional security**.

### Additional security

Press the ++"Start"++ button to open the main menu, go to *System settings* and find *Security*. There, you can toggle *Enforce security* on or off. Be aware that you need to restart the device for the change to take effect.

After you enabled additioal security and rebooted your device, return to the *Security* menu. Below the toggle to *Enforce security* you will find the *Root password* now. The root password is generated randomly and sometimes changes automatically when the system receives updates or when major settings have been modified. However, you will always be able to look up your current root password by returning to this menu.

The password and the username `root` must now be used to access the device via network.

!!! warning "Unknown networks"

    Be aware, that KNULLI is built for retro gaming and easy network access. While this setting will make it harder to access your userdata partition, you still should not connect your KNULLI-driven device to any unknown local networks.

### Hostname

The default hostname of the device will always be `KNULLI`. However, you can pick your own hostname, which might come in handy if you have more that one KNULLI-driven device in your local network. Within your local network, the hostname should be unique, if possible.

If you want to change the hostname of your device, press the ++"Start"++ button to open the main menu and go to *Network settings* where you can modify the *Hostname*.

Windows users may use the hostname to find the device and access the userdata partition. When the device is turned on and connected to your local network, you will find the device in Windows Explorer at the "Network" section under its hostname. Alternatively, you can access the device directly by typing the path in the address bar of Windows Explorer.

The path

```
\\KNULLI\share
```

(replace`KNULLI` with your hostname if you changed it) will lead directly to the `/userdata` folder where you will find your ROMs, BIOSes, etc. See the [Add Games](../../play/add-games) section for more details.

