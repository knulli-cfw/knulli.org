# :material-sync: Syncthing

## Syncing between KNULLI devices

To use Syncthing between two KNULLI devices they must be both powered on and connected to the same network.

Begin by toggling on the Syncthing service by pressing `START` and going to: *System Settings* → *Services* → *Syncthing*.
  
## Connecting to the Web UI

Find your IP address for both devices by pressing ++"Start"++ and going to *Network Settings*. It should usually look something like this: `192.168.0.100`

Connect to the web UI by typing in your IP address followed by the port number 8384 into a web browser that is also connected to the same network. For example: `192.168.0.100:8384`. This will bring you to the Syncthing web UI where you can manage Syncthing.

You will get a message about usage reporting, click yes or no.

There will be a danger warning about setting a user and password. Go ahead and do that by clicking *Settings* on the webpage and then clicking the *GUI* tab. Set your *GUI Authentication User* and *GUI Authentication Password* and click save.

You will then be prompted to login with the user name and password you just created. Ignore the `Notice` about running as a privileged user and click `OK`.

Repeat these steps on the second device.

## Setting up the sync

Begin by setting up the folder you wish to share. Open the web UI of one of the devices and click *Add Folder*. Give the folder a name under *Folder Label*, e.g., `KNULLI saves`. For the *Folder Path*, enter the path you want to sync, e.g., the folder to where the saves a kept: `/userdata/saves`. Then click `Save` to save your settings.

We now need to connect the devices and tell them which folder we would like to sync. Begin by clicking *Add Remote Device* on the device you just set up the folder path for.

Syncthing should automatically detect the device ID of the other system. It will be a long string of characters that looks like `FDZ2WWT-FGCHTOB-SX3LI4P-4CBN3MR-Q7SAPUC-NFQQP25-EYJEYTX-WL5TFQE`. If there is no device ID shown automatically, you can get the device ID by going to *Actions* and *Show ID* on the **other system's** web UI. Give the device a name, then go to the *Sharing* tab and check the box next to the shared folder you created earlier. Save your changes.

Now on the **second device**, you will find a notification on the Syncting web UI, informing you that another device wishes to connect. Click *Add Device* in the notification. Everything will be auto populated so just click *Save*.
Now you will see another notification telling you that the device we just added wants to share a folder. Click *Add* in the notification.

Modify the *Folder Path* to the same as earlier, e.g., `/userdata/saves`, then click save.

Congrats! Your two devices are now syncing with one another.
