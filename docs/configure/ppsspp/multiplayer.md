**PSP (PPSSPP) 2 device local network multiplayer guide:**

_**Prerequisites:**_

* Ideally you should have 2 devices using the same version of PPSSPP. It may or may not work on differing versions, but the further away the versions get, the less likely it is to work right.
* You need both devices connected to WiFi
* This guide is made for Knulli devices, it may work for other devices (especially those running versions of Batocera),

_**Instructions**_

_**On the server device:**_

1) Go to your network settings for the server device and copy down the IP address
2) Launch a PSP game to get into PPSSPP
3) Press the function button to get into the PPSSPP menu
4) Go to Settings->Network
5) Check these boxes
* Enable networking/WLAN
* Enable built in PRO ad hoc server
* Enable UPnP
* UPnP user original port
6) Enter your device IP address into where it says "Change PRO ad hoc server IP address"
7) Go to back -> continue

_**On the client device**:_
1) Launch a PSP game to get into PPSSPP
2) Press the function button to get into the PPSSPP menu
3) Go to Settings->Network
4) Check these boxes
* Enable networking/WLAN
* Enable UPnP
* UPnP user original port
6) Enter the server device's IP address from earlier into where it says "Change PRO ad hoc server IP address"
7) Go to back -> continue
  
Start up multiplayer ad-hoc mode on the game running on both devices. If the game gives you the option to start a server, then best to do that on the server device first and have the client device connect (this worked well on Fat Princess). Some games that just use ad hoc networking take a while to connect, so be patient- Lumines took maybe 30 seconds before the icon for the other player showed up in the list.
