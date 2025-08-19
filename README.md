# Welcome to the KNULLI Wiki!

> [!IMPORTANT]
> This is the repository of the **KNULLI Website**. Please **do not report issues** regarding the **operating system** in this repository. If you want to report issues with KNULLI, either use the **[issue tracker of the distribution repository](https://github.com/knulli-cfw/distribution/issues)** or simply **[join us on Discord](https://discord.gg/HXPS3DAeeB)**.

The **[official KNULLI website](https://knulli.org)** is a source of information for our users. It is our mission to keep it up-to-date and to be always in line with the **latest public KNULLI version**. However, like the software itself, the KNULLI website is an open-source project and a community effort. We consider the KNULLI website a wiki which means that **you** are invited to participate in adding and improving any information!

## Contributing to the KNULLI Wiki

The KNULLI website is written in **[Markdown](https://wikipedia.org/wiki/Markdown)**, a lightweight markup language which can be edited with any **plain text editor**. It is possible to **edit the pages directly on GitHub**. However, we recommend to run the website locally on your own machine via **Python** and edit all pages with a proper text editor. For Windows users, we strongly recommend to use **[Notepad++](https://notepad-plus-plus.org/downloads/)**, a well-established plain-text editor with advanced features like syntax highlighting for a lot of languages.

If you are not familiar with Markdown, yet, you will find a lot of helpful guides on the internet, e.g. **[The Markdown Guide](https://www.markdownguide.org)**. Alternatively, you can **copy and learn** the already existing **patterns** from an **already existing page**.

### Join GitHub and fork the repository

The KNULLI website is stored in a GitHub repository. To work on the KNULLI wiki, your very first step should be to **sign up at [GitHub](https://github.com/)**. (it's free!) Next, you need to **fork** the KNULLI wiki into your own GitHub account where you will be able to edit the website however you like. To fork this repository, simply find the **Fork** button **at the top of this page** and follow the instructions (you basically simply need to hit the **Create fork** button.

You will now find your own editable copy of the KNULLI wiki in your own GitHub account.

### Option A: Use GitHub as a text editor

Once you have created your own fork of the KNULLI website, you can edit any page (the `.md` files) and the table of contents (hidden in `mkdocs.yml`) directly on GitHub. Simply pick the file you want to edit, then proceed to click the **edit button** at the top left (it has neat little pencil icon). You can also add new files by clicking the **add file** button at the top of the screen.

When you save your changes, don't forget to add a **commit message**, briefly explaining the changes you made!

### Option B: Run the entire website on your machine

For more experienced users, we **strongly** recommend to learn how to run the entire website locally on your own machine:

* [Download Python](https://www.python.org/downloads/) and install it on your computer.
* Download a proper plain-text editor (e.g., [Notepad++](https://notepad-plus-plus.org/downloads/) or [Visual Studio Code](https://code.visualstudio.com/Download)) and install it on your computer.
* Download Git (e.g., [Git for Windows](https://gitforwindows.org/)) and install it on your computer.
* (Optionally) also install a visual Git client (e.g., [TortoiseGit](https://tortoisegit.org/) or [Github Desktop](https://desktop.github.com/download/)).
* Install the following python packages/dependencies:
    * Install pip env: `pip install pipenv`.
    * Add this address to your system PATH variable: `C:\Users\{your_windows_user}\AppData\Roaming\Python\{your_Python_version}\Scripts` (you can get the exact string to add from the console output when installing pipenv in the previous bullet).
    * Install mkdocs and its dependencies: `pip install mkdocs mkdocs-material mkdocs-glightbox mkdocs-macros-plugin mkdocs-static-i18n`.
* Check out your own GitHub repository to a folder on your machine.
* Open a command line tool (e.g., Windows PowerShell Terminal), navigate to the project folder.
* Run the command `pipenv run mkdocs serve`.
* You will be able to access your local version of the website at `http://127.0.0.1:8000/`.
* Edit any file you like and either wait for the page to reload automatically or refresh your browser to see the changes you made.

Once you are done with all the changes you want to propose to us, make sure to **commit** them with a proper commit message and **push** them to your GitHub repository.

### Create a pull request

After you have successfully **committed** (and **pushed** if you worked locally) your changes to your repository, it is now time to send those changes back to us. To do that, you need to **create a pull-request**. You can do this directly on the GitHub webpage.

When creating a pull-request, please make sure to summarize **which changes** you made and **why you made them**. If your changes aren't self-explanatory, you should back them up with your original sources.

A team member will **review your pull-request** and ideally accept it right away. In rare occurrences, a team member might ask you for changes to add **before** accepting your pull-request. In even rarer cares, a pull-request might even be **declined** - if that happens, the responsible team member will explain to you why your pull-request could not be accepted.

If a week has passed without anyone reviewing your pull-request hasn't been reviewed, don't hesitate to give us a bump on [Discord](https://discord.gg/HXPS3DAeeB) **in the #website channel**.

## Where to start

If you already know your way around Markdown, you will probably know what to do anyway. If you don't, here's the gist.

### Table of contents

`mkdocs.yml` is the file which holds the metadata of the website, a lot of plugins etc. Most importantly though, this file contains the `nav:` section which is the **table of contents** in a **tree-like** structure with a hierarchy that's created **by indentation**. Generally speaking, you need to be very careful with indentation if you touch this file.

The structure of the table of contents mirrors the `docs` folder. The file also contains `nav_translations:` for several languages.

### Wiki pages

The various wiki pages are stored in the `docs` folder, with `docs/index.md` being the **landing page**, the first thing you see when visiting knulli.org. Variants like `docs/index.de.md` are translations (in this case, the German version, indicated by the [country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).

Subfolders mirror the tree structure of the table of contents and group any files which can be grouped into a major category, e.g. `configuration`, `guides`, or `faq`. **If you add a new page to the table of contents, make sure to never refer to a translated version but always to the original English version**. Country codes will be applied automatically when users switch languages!

## Style guide

Generally speaking, we prefer substance over style. So if you want to add something to the website but you are new to Markdown, don't be scared to do it wrong, just get started. Nobody did everything perfect right from the start.

However, if you want some pointers, here's the gist:

### Text formatting

#### Emphasize

To emphasize a word, we use **bold** formatting which can be achieved by surrounding the text a double `**` character (asterisk) at start and end of the text, e.g. `this is a **bold statement** right here`.

#### Menu and menu item names

When you refer to a menu name, a menu item name, or a menu item option name, it should always be formatted *italic*. This can be achieved by surrounding the text with a single `*` (asterisk) character at start and end of the text, e.g. `this is an *italic word* right here`.

#### Buttons

When you want to tell the user which buttons to press, the button names should be formatted as such via `++"<button name>"++`, e.g. `++"Start"++` to create a Start button icon inside the text.

Additionally, you may use icon shortcodes for material icons to display face buttons:

| Shortcode                                  | Description |
|----|----|
| `:material-gamepad-circle-up:`     | Face button north (X) |
| `:material-gamepad-circle-down:`  | Face button south (B) |
| `:material-gamepad-circle-left:`  | Face button west (Y) |
| `:material-gamepad-circle-right:` | Face button east (A) |
| `:material-gamepad-circle-up:`     | Dpad up |
| `:material-gamepad-circle-down:`  | Dpad down |
| `:material-gamepad-circle-left:`  | Dpad left |
| `:material-gamepad-circle-right:` | Dpad right |

For example:

```
Press ++"Start"++ to open the main menu, then use :material-gamepad-circle-up: and :material-gamepad-circle-down: to select a submenu.
```

#### Source code, configuration files and user input

Source code and any texts the user is expected to input via keyboard (including on-screen keyboards) should be marked as `code`. To format a phrase within a sentence as code, add the ````` character ("backtick") at start and end of the text, e.g. ``I really love writing `source code` for KNULLI``!

If you want to add an entire block of code, e.g. a multi-line excerpt from a configuration file, put three backticks in a line, put the code excerpt in the following lines and end the code block by adding another line of only three backticks:

````
Here are some lines from `batocera.conf` as an example:

```
system.toggleswitch.mode=mute
system.input.p1_handheld=0
global.bezel=default-knulli-sp

```
````
