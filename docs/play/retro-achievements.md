# :fontawesome-solid-medal: Retro Achievements

KNULLI has a native integration with [RetroAchievements](https://retroachievements.org/) which allows you to earn achievements as you play games across numerous emulators. In order to use RetroAchievements your device must be connected to the internet.

## Setup

* Create an account at [RetroAchievements.org](https://retroachievements.org/).
* Follow the steps on the [Networking](../../configure/networking) page to connect your device to the internet.
* While in EmulationStation press ++"START"++ on your controller to open the Main Menu.
* Select `Game Settings` and then choose `RetroAchievement Settings`.
* Turn On RetroAchievements (first toggle).
* Then enter your credentials for RetroAchievements.org:
    * **Username**
    * **Password**
    * **API Key**

!!! info "Adding your API key"

    **Without** an API key, you will still be able to **collect** RetroAchievements while playing. However, only by adding your **API key** you will gain access to an **additional** menu which gives you a **summary** of all your collected RetroAchievements (and those that you did not collect, yet).

    Consequently, adding an API key is **optional**.

    You will find your API Key by logging in at [RetroAchievements.org](https://retroachievements.org/) and navigating to the [*Settings* page](https://retroachievements.org/settings). Scroll down to the *Keys* section to find your **Web-API-Key** in a **shortened form**! However, **the shortened form will not work as a valid API key for KNULLI.**
    
    To reveal the **entire** API key, copy it from the browser (e.g., to a text editor). Once you revealed the entire API key, enter the **entire** API key in the *RetroAchievement Settings* of your KNULLI device. After re-opening the main menu, you should find the *Retroachievements* section either in the main menu or inside the *Game Menu*, depending on your settings.
    
    To change the location of the *Retroachievements* section, press ++"Start"++ to bring up the main menu, head to *Game Settings* and find *RetroAchievement Settings*. Here, you can toggle *Show RetroAchievements entry in main menu* on or off.

## Additional Notes

- There are additional settings that can be changed in the above menu to tailor your experience.  Please see the documentation @ [docs.retroachievements.org](https://docs.retroachievements.org/) for details on each option
    - Recommended Settings:
    - Unlock Sound (++"On"++): this plays the classic unlock sound each time an achievement is earned.
    - Automatic Screenshot (++"On"++): this takes a screenshot each time an achievement is earned and stores it in the screenshots directory.  These can be viewed in the screenshots system in EmulationStation.
- Not all emulators and games support RetroAchievements; please see the list of emulators that support achievements [here](https://docs.retroachievements.org/Emulator-Support-and-Issues/) and check if your game has achievements available by searching for it on RetroAchievements.org
