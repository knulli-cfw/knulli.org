# :material-wifi: Networking

Many devices which are supported by KNULLI are capable of connecting to the internet as well as local networks. In most cases, this is achieved by a built-in Wi-Fi adapter. However, KNULLI also supports network connection via USB dongles.

## Supported network adapters

Some KNULLI-supported devices (e.g., Anbernic RG35XX Plus/H/SP, TrimUI Smart Pro) already come with a built-in network adapter that is completely supported by KNULLI. If your device comes with a built-in Wi-Fi adapter, you can skip ahead to [setting up Wi-Fi](#setting-up-wi-fi).

However, even devices without a built-in network adapter (e.g., Anbernic RG35XX 2024, Anbernic RG28XX) can be connected to your Wi-Fi. KNULLI supports external USB Wi-Fi dongles which are based on the *RTL8192cu* or *RTL8188eu/us* chipsets. More specifically, the KNULLI community strongly recommends the **TP-Link TL-WN725N** network adapter.

To activate your USB network adapter

* plug the network adapter into an appropriate USB port of your KNULLI device.
* press the ++"Start"++ button and head to *System Settings*. There you will find *Services* where you need to turn on `ENABLE_WIFI` **after** you plugged the network adapter into your device.
* follow the instructions for [setting up Wi-Fi](#setting-up-wi-fi).

## Setting up Wi-Fi

!!! danger "WPA2+WPA3 issues"

    Some users experienced issues when connecting their device to a **WPA2+WPA3-protected Wi-Fi**. KNULLI currently **doesn't support** WPA2+WPA3 networks, so we recommend to lower security measures and switch your Wi-Fi to WPA1+WPA2 if possible.

    However, KNULLI Firefly comes with a brand new **experimental service** which might allow you to connect to your WPA2+WPA3-protected Wi-Fi anyway. If you have problems connecting to your Wi-Fi, try to enable the service. Press ++"Start"++ to bring up the main menu, go to *System Settings*, then *Services*, and enable *WIRELESS_HYBRID_FIX*. Be aware that this feature is **experimental**.
    
If your device has a built-in Wi-Fi adapter, you can set it up directly via KNULLI. Press the ++"Start"++ button to open the main menu, go to *Network settings* where you can configure your Wi-Fi connection. In the lower *Settings* section, enable Wi-Fi, then select your Wi-Fi by its SSID, enter your Wi-Fi key, and leave the menu to connect to your Wi-Fi.

In the section above, you can see whether you are currently connected to Wi-Fi, see your current IP address and toggle the network indicator on or off.

### Multiple Wi-Fi networks (up to 3)

KNULLI has some additional options which are hidden from the GUI for the tech-savvy user to take advantage of. Through the GUI you may choose only a single Wi-Fi network SSID through discovery and provide a key through the soft keyboard. But if you're a gamer on the go, you may want a touch of flexibility for additional hot spots. You can configure a secondary and tertiary Wi-Fi by editing `batocera.conf` directly. You can access the file by the same why you add your games as described in the [Add Games](../../play/add-games) section, or use a command line editor via [SSH](../ssh). The file is located at `/userdata/system/batocera.conf` or `SHARE\system\batocera.conf` depending on your perspective. In `batocera.conf`, simply find and edit the following lines:

```
## Secondary Wi-Fi
wifi2.ssid=wifiname2
wifi2.key=supergoodkey2

## Third Wi-Fi
wifi3.ssid=wifiname3
wifi3.key=supergoodkey3    
```
!!! warning "Password protection"

    By default, your KNULLI device does not require a root password to access your device. Consequently, as soon as you connect to a network, the data on your device becomes accessible in your local network without any password protection. While this might be convenient within your own home, it might be a severe security risk when connecting to a network which is not under your control. We strongly suggest enabling **additional security**.

### Additional security

Press the ++"Start"++ button to open the main menu, go to *System settings* and find *Security*. There, you can toggle *Enforce security* on or off. Be aware that you need to restart the device for the change to take effect.

After you enabled additional security and rebooted your device, return to the *Security* menu. Below the toggle to *Enforce security* you will find the *Root password* now. The root password is generated randomly and sometimes changes automatically when the system receives updates or when major settings have been modified. However, you will always be able to look up your current root password by returning to this menu.

The password and the username `root` must now be used to access the device via network.

!!! warning "Unknown networks"

    Be aware that KNULLI is built for retro gaming and easy network access. While this setting will make it harder to access your userdata partition, you still should not connect your KNULLI-driven device to any unknown local networks.

### Hostname

The default hostname of the device will always be `KNULLI`. However, you can pick your own hostname, which might come in handy if you have more than one KNULLI-driven device in your local network. Within your local network, the hostname should be unique, if possible.

If you want to change the hostname of your device, press the ++"Start"++ button to open the main menu and go to *Network settings* where you can modify the *Hostname*.

Windows users may use the hostname to find the device and access the userdata partition. When the device is turned on and connected to your local network, you will find the device in Windows Explorer at the "Network" section under its hostname. Alternatively, you can access the device directly by typing the path in the address bar of Windows Explorer.

The path

```
\\KNULLI\share
```

(replace `KNULLI` with your hostname if you changed it) will lead directly to the `/userdata` folder where you will find your ROMs, BIOS files, etc. See the [Add Games](../../play/add-games) section for more details.
