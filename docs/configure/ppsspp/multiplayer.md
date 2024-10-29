# Local Network Multiplayer

## Prerequisites:

* Ideally you should have 2 devices using the same version of PPSSPP. It may or may not work on differing versions, but the further away the versions get, the less likely it is to work right.
* You need both devices connected to WiFi
* This guide is made for Knulli devices, it may work for other devices (especially those running versions of Batocera),

## Instructions

### On the server device:

* Go to your network settings for the server device and copy down the IP address
* Launch a PSP game to get into PPSSPP
* Press the function button to get into the PPSSPP menu
* Go to Settings->Network
* Check these boxes
    * Enable networking/WLAN
    * Enable built in PRO ad hoc server
    * Enable UPnP
    * UPnP user original port
* Enter your device IP address into where it says "Change PRO ad hoc server IP address"
* Go to back -> continue

### On the client device:
* Launch a PSP game to get into PPSSPP
* Press the function button to get into the PPSSPP menu
* Go to Settings->Network
* Check these boxes
    * Enable networking/WLAN
    * Enable UPnP
    * UPnP user original port
* Enter the server device's IP address from earlier into where it says "Change PRO ad hoc server IP address"
* Go to back -> continue

Finally, once all that is done, start up multiplayer ad-hoc mode on the game running on both devices. If the game gives you the option to start a server, then best to do that on the server device first and have the client device connect (this worked well on Fat Princess). Some games that just use ad hoc networking take a while to connect, so be patient- Lumines took maybe 30 seconds before the icon for the other player showed up in the list.
