# :material-image-plus: Scraping

Once you added all your games to your KNULLI device, you might want to add box art and other metadata for your games. Of course, you can always edit the `gamelist.xml` files manually and fill in all the metadata. However, KNULLI supports scraping media and metadata automatically from three different sources: [ScreenScraper](https://www.screenscraper.fr), [TheGamesDB](https://thegamesdb.net) and [ArcadeDB](http://adb.arcadeitalia.net).

!!! info "The built-in scraper attempts to find media and metadata for your games based on the file names of the game ROMs (or launch scripts for ports). If the file names contain region information (like `(U)` or `(EU)`), the scraper will take that into account. Make sure the ROMs and scripts are named properly, otherwise the scraper will fail to identify the game. If you cannot provide a readable name for your game, as some systems require the scripts to have specific names (e.g., ScummVM), don't worry - you can scrape data for those games manually."

## Displaying scraped media

KNULLI uses [Art-Book-Next](https://github.com/anthonycaccese/art-book-next-es) as the default theme for the EmulationStation GUI. The theme supports displaying a lot of metadata and media you can scrape from the supported scraping sources.

The theme displays

* in the game list of the respective system
    * either *boxart* or *image* as the game artwork.
        * Press the ++"Start"++ button and go to the *Theme configuration* section of the *User interface settings* to toggle *Game artwork*.
    * a scraped video to preview some gameplay in the game list.
    * the description of the game.
    * the community rating.
    * the release date.
* in the game menu (hold the button which starts the game to bring up the game menu)
    * the game logo.
    * the game manual.
    * other scraped game media as a gallery.

!!! info "If you switch to a different theme, you might not be able to display the same media. If your scraped media is not displayed as expected in a theme you manually installed, please refer to the theme's documentation for help."

## Scraping media

To scrape media from any of the sources KNULLI supports, there are two different options. You may either scrape media for your whole collection (or parts of your collection) or you can scrape media for a single game. But before you scrape, make sure that your scraper settings are set up the way you like them to be.

!!! info "Some scraper sources have a limit for the amount of data/media you are allowed to scrape per day. Make sure to avoid unnecessary scraping by setting up your scraper properly before you begin scraping."

#### Scraper settings

To set up the scraper, press ++"Start"++ to get to the main menu and select *Scraper* to bring up the scraper menu. In the scraper menu, you can set your main scraper source. This is the source that will always be used when you scrape for several (or even all) games at the same time. By default, ScreenScraper will be selected. However, you can switch the source to TheGamesDB or ArcadeDB if you prefer.

!!! info "ScreenScraper requires the user to be logged in to a ScreenScraper account. If you want to scrape from ScreenScraper, go to the [ScreenScraper](https://www.screenscraper.fr) website and register for an account. (It's free!)"

In the *Scraper settings*, you can put in your ScreenScraper login credentials and choose exactly what data to scrape for. The option *Box source* allows you to pick which type of box art you want for your collection (e.g., 2D box art or 3D box art). *Logo source* allows to pick from a number of different types of logos (*wheel* corresponds to the logo of the game on a transparent background without any further decorations, the other options are stylized variants of the logo).

You may also pick a *Preferred region*, since many games have been published all over the world and box art may be different in certain regions.

With the toggles for *Overwrite descriptions* and *Overwrite medias*, you can protect the data you have already scraped or maybe even edited manually.

Aside of those options, there are a lot of toggles for different types of metadata like video, community rating, and even the game manual. Take your time to set up your scraping preferences and maybe try them out with a single game before you scrape your whole collection.

### Scraping media for a single game

Once your scraper settings are done, you can try them out by scraping data and media for a single game. Pick a game, any game (preferrably, a game that is well known, to be sure that there's data and media available). Go to the system category (e.g., SNES) and pick a game (e.g., "Super Mario World"). Now, depending on your GUI settings, either the ++"B"++ button (south) or the ++"A"++ button (east) will be the button which launches a game. Press the button that launches your games and **hold it** to bring up the game menu.

At the bottom of the game menu, you will find the *Scrape* option. If you select it, KNULLI will attempt to find metadata and media for that game. Unlike the bulk scraping for several games, scraping for a single game will fetch information from **all** available sources. Once the data was received, the scraper will prompt the user with a selection to pick from, sorted by the scraper source.

If the scraper does not find any results (e.g., because you are scanning for a launch script of a port which as an odd name), you can try to find the correct game manually. On the bottom of the scraper screen, you will find the option *Input*. Select that and enter the name of the game you want to scrape media for.

!!! info "Some games have different names in different regions. For example, "Broken Sword" is called "Baphomet's Fluch" in Germany. If the scraper cannot find the game by its regional name, search for the international name instead."

After you picked the preferred scraping result, the scraper screen will close. If you do not see the scraped information, yet, you might need to update your gamelists. Press the ++"Start"++ button to open the main menu, go to *Game settings* and select *Update gamelists*. Afterwards, you should find that the media and metadata for the game are displayed as expected.

### Scraping media for all games

When you first set up your KNULLI device, you will most likely want to scrape media for all your games at once. After you made sure that the scraper settings are to your liking and you verified by scraping data for a single game, you are now ready for bulk scraping. Be aware that bulk scraping can take quite some time, depending on the size of your game collection.

To start bulk scraping, press the ++"Start"++ button to bring up the main menu and head to *Scraper*. In the section *Filters* you will be able to configure which games you want to scrape data and media for. You can pick or omit certain systems or exclude games which have been scraped for recently. After you have set up your filters, select *Scrape now* at the bottom of the screen.

KNULLI will start to scrape. You can leave the menu, since KNULLI will continue scraping in the background. While on EmulationStation, you will be able to monitor the scraping process in the top right of the screen. Scraping will continue, even while you play a game. However, since the scraping is a time- and energy-consuming operation, you might not want to play any resource-demanding games while the scraping runs in the background.

After scraping was finished, you might need to update gamelists again to apply the changes. Press the ++"Start"++ button to open the main menu, go to *Game settings* and select *Update gamelists*.

All your games will have the desired boxart, descriptions, and videos now. If you notice that a game is still missing media or metadata (or has the wrong media or metadata), you may try to scrape media again for that specific game, as described in the [Scraping media for a single game](#scraping-media-for-a-single-game) section.

