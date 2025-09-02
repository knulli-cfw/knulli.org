# Syncthing

## Syncing between Knulli devices

To use Syncthing between two Knulli devices they must be both powered on and connected to the same network.

Begin by toggling on the Syncthing service by pressing `START` and going to:

	SYSTEM SETTINGS -> SERVICES -> SYNCTHING
	
## Connecting to the webui

Find your IP address for both devices by pressing `START` and going to `NETWORK SETTINGS`. It should usually look something like `192.168.0.100`

Connect to the web UI by typing in your IP address followed by the port number 8384 into a web browser that is also connected to the same network. For example: `192.168.0.100:8384`. This will bring you to the Syncthing webui where you can manage Syncthing.

You will get a message about usage reporting, click yes or no.

There will be a danger warning about setting a User and Password. Go ahead and do that by clicking `Settings` on the webpage and then clicking the `GUI` tab. Set your `GUI Authentication User` and `GUI Authentication Password` and click save.

You will then be prompted to login with the username and password you just created. Ignore the `Notice` about running as a privileged user and click `OK`.

Repeat these steps on the second device.

## Setting up the sync

Begin by setting up the folder we wish to share. On one of the devices webui click `Add Folder`. Give the folder a name under `Folder Label` like "Knulli saves". For the Folder Path, enter the path to where the saves a kept: `/userdata/saves`, then click `Save`.

We now need to connect the devices and tell them which folder we would like to sync. Begin by clicking `Add Remote Device` on the device you just setup the folder path for.

Syncthing should automatically detect the device ID of the other system. It will be a long string of characters that looks like `FDZ2WWT-FGCHTOB-SX3LI4P-4CBN3MR-Q7SAPUC-NFQQP25-EYJEYTX-WL5TFQE`. If there is no device ID shown automatically, you can get the device ID by going to `Actions` and `Show ID` on the other system. Give the device a name then go to the `Sharing` tab and check the box next to the shared folder we created earlier. Save your changes.

Now on the second device, you will have a notification on the Syncting webui informing you that another device wishes to connect. Click `Add Device` in the notification. Everything will be auto populated so just click `Save`.
Now you will see another notification telling you that the device we just added wants to share a folder. Click `Add` in the notification.

Modify the `Folder Path` to the same as earlier: `/userdata/saves`, then click save.

Congrats you two devices are now syncing with one another.