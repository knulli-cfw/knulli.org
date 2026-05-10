# :material-sync: Syncthing

Syncthing is a tool for synchronizing entire folders across multiple devices. By default, KNULLI comes with syncthing pre-installed. With Syncthing enabled and configured, you will be able to synchronize your savegames across multiple handhelds or back them up to your NAS whenever you are at home.

!!! warning "With great folder size comes great responsibility"

    Many users have managed to completely lock themselves out of their systems by attempting to synchronize the entire `roms` folder across devices. We understand this might be tempting as a newly added game will automatically be copied to all sync'd devices. However, the huge folder size will more likely cause a blocking I/O operation which locks the OS out of any SD card access for minutes, potentially hours, rendering the device unusable.

## KNULLI integration

Once the initial Syncthing setup was done, you should receive notifications in EmulationStation whenever Syncthing is actively transferring data. This should help you keep track of whether there are still transfers in progress or if you can safely shut down your device now since all transfers are done. Furthermore, you will find a couple of Syncthing-related settings when you press ++Start++ and enter the *Device Settings* menu:

- *Synchronize now* will immediately trigger a scan of all your shared folders to check for changed files.
- *Reload configuration* will allow you to re-scan the Syncthing configuration file, e.g. for updated shared folders, devices, etc. So if you added/removed a new shared folder or paired a new device, reloading the configuration will be required to flush the new settings without rebooting the device.
- *Auto-scan on game exit* is a toggle which, if enabled, triggers a scan of all shared folders immediately after exiting a game. This will make sure that once you exited a game, the new saves will be synced immediately if paired devices are within reach.
- *Notifications* is a toggle switch to enable/disable the notifications you get in EmulationStation.

!!! warning "Syncthing options will not show if Syncthing is not up and running"

    We do not like clutter, hence all Syncthing options are hidden if Syncthing isn't running since the options wouldn't have an effect anyway.

## Setting up Syncthing on your KNULLI device

!!! info "Syncthing does not use a cloud."

    To use Syncthing between two devices they must be both powered on and connected to the same network.

Begin by toggling on the Syncthing service by pressing `START` and going to: *System Settings* → *Services* → *Syncthing* on your KNULLI device.
  
### Syncthing configuration

Syncthing is configured via a web UI that you can access from any browser within your network. Once your KNULLI device is connected to your network and Syncthing is up and running, you should be able to connect to the web UI of that Syncthing installation.

The URL depends on either the **hostname** or **IP address** of your device. Both, `http://<hostname>:8384` and `http://<ip>:8384` should work just fine.

!!! info "Where do I find my hostname or IP address?"

    To find your hostname (default is `KNULLI`), press ++"Start"++ and go to *Network Settings*.

    To find your IP address, press ++"Start"++ and go to *Network Settings*. It should usually look something like this, four numbers, separated by three dots: `192.168.0.100`

Connect to the web UI by typing in your IP address followed by the port number 8384 into a web browser that is also connected to the same network. For example: `192.168.0.100:8384`. This will bring you to the Syncthing web UI where you can manage Syncthing.

#### Initial setup

When setting up Syncthing for the first time, you will get a message about usage reporting, click yes or no.

There will be a danger warning about setting a user and password. Go ahead and do that by clicking *Settings* on the webpage and then clicking the *GUI* tab. Set your *GUI Authentication User* and *GUI Authentication Password* and click save.

You will then be prompted to login with the user name and password you just created. Ignore the *Notice* about running as a privileged user and click *OK*.

### Synchronizing a folder

Once you have at least two Syncthing installations up and running, you can share your first folder between them. E.g., you can share the saves folder between to KNULLI devices.

Begin by setting up the folder you wish to share. Open the web UI of one of the devices and click *Add Folder*. Give the folder a name under *Folder Label*, e.g., `KNULLI saves`. For the *Folder Path*, enter the path you want to sync, e.g., the folder where the saves a kept: `/userdata/saves`. Then click *Save* to save your settings.

We now need to connect the devices and tell them which folder we would like to sync. Begin by clicking *Add Remote Device* on the device you just set up the folder path for.

Syncthing should automatically detect the device ID of the other system. It will be a long string of characters that looks like `FDZ2WWT-FGCHTOB-SX3LI4P-4CBN3MR-Q7SAPUC-NFQQP25-EYJEYTX-WL5TFQE`. If there is no device ID shown automatically, you can get the device ID by going to *Actions* and *Show ID* on the **other system's** web UI. Give the device a name, then go to the *Sharing* tab and check the box next to the shared folder you created earlier. Save your changes.

Now on the **second device**, you will find a notification on the Syncting web UI, informing you that another device wishes to connect. Click *Add Device* in the notification. Everything will be auto populated so just click *Save*.
Now you will see another notification telling you that the device we just added wants to share a folder. Click *Add* in the notification.

Modify the *Folder Path* to the same as earlier, e.g., `/userdata/saves`, then click save.

Congrats! Your two devices are now synchronizing their savegame folders with one another.

