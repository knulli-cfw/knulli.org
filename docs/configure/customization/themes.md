# :material-page-next-outline: Themes

Knulli's default frontend is EmulationStation and default theme is [Art Book Next](https://github.com/anthonycaccese/art-book-next-es). Also included by default is the [Carbon](https://github.com/fabricecaruso/es-theme-carbon) theme from Batocera. Both are updated automatically as part of each release.

## Preview

<table>
  <tr>
    <td><img src="/_inc/images/screenshots/system-view.png"/></td>
    <td><img src="/_inc/images/screenshots/menu.png"/></td>
  </tr>
  <tr>
    <td><img src="/_inc/images/screenshots/gamelist-view-metadata-immersive.png"/></td>
    <td><img src="/_inc/images/screenshots/gamelist-view-no-metadata-immersive.png"/></td>
  </tr>
</table>

## Configuration

The following options can be changed directly from the main menu under `User Interface Settings > Theme Configuration`

| Setting | Description | Options |
| -- | -- | -- |
| Distribution | Used to define which folder to look in for Theme Customization files. | `Batocera/Knulli`, `RetroBat` |
| Aspect Ratio | Enables you to select the correct aspect ratio for your screen.  This will automatically set itself so you should not need to change it but if the theme layout looks odd or spacing looks incorrect you can use this setting to make sure the aspect ratio matches your screen. | `16:9`, `16:10`, `4:3`, `3:2`, `1:1` |
| System Artwork | Defines the set of artwork that is displayed on the system view | `Default`, `Noir`, `Custom`, `Custom (Fullscreen)` |
| System Logos | Defines the logo set used on all views | `Default`, `Custom` |
| Game Artwork | Defines the type of artwork used to represent a game. These are sourced from the selections you make in the scraper menu. Image will display the image you selected to scrape for `Image Source`.  Image (Cropped) will display that same image zoomed in to fill the screen.  Boxart will display the image you selected to scrape for `Box Source` | `Image`, `Image (Cropped)`, `Boxart` |
| Game Metadata | Sets if metadata (e.g. description, release date, etc...) should be displayed for a game | `On`, `Off` |
| Font Size | Set the size for text elements throughout the theme. | `Default`, `Small`, `Large` |
| Color Scheme | Sets the color scheme that is used for the theme.  There is a set of prebuilt color schemes that you can select and an option to supply your custom color scheme (selected by choosing `custom`). You can see details on customizations below under [Customization](#customization). | `Default`, `Light`, `Steam OS`, `SNES`, `Famicom`, `DMG`, `OLED`, `Custom` |
| Splash Screen | Toggles an optional custom splash screen which will be displayed when EmulationStation is loading and/or scanning for ROMs. | `Default`, `Custom` |

### Additional UI Settings 

The following EmulationStation settings can also be changed and will update the look of the theme accordingly:

* `User Interface Settings > Show Clock` - This will allow you to turn the system clock on or off
* `User Interface Settings > On-Screen Help` - This will turn the display of EmulationStation's help system on or off (the theme's layout will automatically adapt to the available space)
* `User Interface Settings > Show Battery Status` - This will allow you to change what is displayed for the battery status.

## Customization

Art Book Next allows customizations to system artwork and color schemes without the need to edit the source XML.  This enables you to change the look of the theme and still retain your changes when the theme is updated.

### Start Here
- Make sure the `Distribution` setting is set to `Batocera/Knulli` (This value determines the folder where you will add your customizations)
    - Batocera/Knulli folder is = `/userdata/theme-customizations/art-book-next/`
    - Create this folder and then move on to the options below...

### Background Art

The artwork used on the system view can be customized with your own images.

#### For angled artwork:

* Create your custom artwork using one of the masks i've supplied in this theme's resources directory [here](https://github.com/anthonycaccese/art-book-next-es/tree/main/resources/customizations). I've included a set of masks that should work in all major image editing programs.
* Export your final images as transparent pngs
* Create a folder in the path you created above called `artwork`
* Upload your images to that folder
* They can be named:
    * `_default.png`
    * `${system.theme}.png`
    * The theme will look them up in that order. If a given image is not found in your folder then the images from the theme will be used as a fallback.  This allows you to customize only the images you want and still have images displayed for all systems.
    * `_default.png` can be used for creating a single image that is used for all systems OR a fallback for systems that you did not create a custom image for (if you don't want to use the fallback that already exists in the theme)
    * `${system.theme}.png` should be named for the system you are looking to override. For example, if you wanted to override the artwork for `snes` you would create an image called `snes.png` in the artwork folder.
* Once your images are in place you turn on custom images by changing the `System Artwork` setting to `Custom`

#### For fullscreen artwork:

* Create a folder in the path you created above called `artwork-fullscreen`
* Upload your images to that folder
* They can be named:
    * `_default.png`
    * `_default.jpg`
    * `${system.theme}.png`
    * `${system.theme}.jpg`
    * The theme will look them up in that order.
    * `_default.png/jpg` can be used for creating a single image that is used for all systems OR a fallback for systems that you did not create a custom image for (if you don't want to use the fallback that already exists in the theme)
    * `${system.theme}.png/jpg` should be named for the system you are looking to override. for example, if you wanted to override the artwork for `snes` you would create an image called `snes.png` or `snes.jpg` in the artwork folder.
* Once your images are in place you turn on custom images by changing the `System Artwork` setting to `Custom (Fullscreen)`

#### Splash Screen

* Upload your image to the folder you created above
* It can be named:
    * `splash.png`
    * `splash.jpg`
* One your image is in place you turn on your splash screen by changing `Splash Screen` to `Custom`

### Color Schemes

You can create your own custom color scheme to use for the theme

* Download [this template](https://github.com/anthonycaccese/art-book-next-es/blob/main/resources/customizations/colors.xml)
* Upload it in the path you created above and make sure its called `colors.xml`
* Change any values in the template to the colors you prefer.
* I tried to make the values as self-explanatory as possible but if you have questions regarding which property does what please don't hesitate to ask.
* After your colors are defined; in theme configuration change `Color Scheme` to `Custom`

### Logos

System logos can be customized by adding your own images

* Create a folder in the path you created above called `logos`
* Upload your images to that folder
* They can be named:
    * `${system.theme}.svg`
    * `${system.theme}.png`
    * The theme will look them up in that order. If a given image is not found in your folder then the images from the theme will be used as a fallback.  This allows you to customize only the images you want and still have images displayed for all systems.
    * `${system.theme}.svg/png` should be named for the system you are looking to override. for example, if you wanted to override the logo for `snes` you would create an image called `snes.svg` or `snes.png` in the logos folder.
* Once your images are in place you turn on custom images by changing the `System Logos` setting to `Custom`    

## Adding Additional Themes

- Knulli's version of EmulationStation is sourced from the same version used in Batocera so you can also use themes that were created for Batocera directly
- You can download themes directly using the built-in theme downloader (which includes nice previews of each theme)
- You can also find a list of Batocera themes here: [https://batocera.org/themes.php](https://batocera.org/themes.php) if you would prefer to download them manually

!!! note "There are no guarantees that themes from the above list will support the aspect ratio of your device or all of the systems we support.  Because of that; some themes may look odd, not display all systems or have layouts that do not match well to your screen."

## Creating Your Own Theme

An exhaustive tutorial is out of scope for this wiki.  That said; please see Batocera's theme documentation @ [https://wiki.batocera.org/write_themes_for_emulationstation](https://wiki.batocera.org/write_themes_for_emulationstation).  Its a great starter guide for understanding the fundamentals of creating themes for the version of EmulationStation used by Knulli.
