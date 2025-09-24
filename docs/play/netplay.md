# :material-web: Netplay

!!! warning "This section is still under construction. Sorry, we're working on it! :smile: Until it's done, you might want to join us on [:simple-discord: Discord](https://discord.gg/HXPS3DAeeB) to get in touch - maybe we can help you there!"

Netplay works in retroarch if wifi is enabled.  When connected to a wifi access point, netplay will use that connection.

To host a netplay game:
Long press east on a supported game in the gamelist and select Start a Netplay Game.
Then select Host a Netplay Game.

To join a netplay game:
Run the game and press menu+south to enter the retroarch menu.
Press south to go up one menu then move down to Netplay.
Select Refresh Netplay LAN List and select the host started above.

To use self hosted (ad hoc) netplay without a wifi access point, both devices need to have wireless enabled but they should not be connected to an access point.  Everything else is the same as a normal LAN netplay connection.  By default, KNULLI will set the host up as an ad hoc access point (configuration parameters can be found in batocera.conf) and the client device should detect the host and be able to connect.
