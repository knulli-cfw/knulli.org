# :octicons-browser-16: OD Commander

From the [OD Commander](https://github.com/od-contrib/commander/)'s source code page:

>   OD Commander is forked from DinguxCommander which is a file manager for RetroFW. It uses two vertical panels side by side, one being the source and the other the destination, like many "commander-style" file managers such as Norton Commander or Midnight Commander.
>   
>   DinguxCommander allows to:
>   
>   * Copy, move and delete multiple files
>   * View a file
>   * Execute a file
>   * Edit a file one line at the time
>   * Rename a file or directory
>   * Create a new directory
>   * Display disk space used by a list of selected files/dirs
>   * Display disk information (used, available, total)

## OD Commander controls in KNULLI

| Button | Action |
| --- | --- |
| :material-gamepad: | Move cursor/highlight |
| ++"L1"++ | Page up |
| ++"R1"++ | Page down |
| :material-gamepad-circle-down: | On a directory: Open<br>On a file: View or execute |
| :material-gamepad-circle-right: | Go to parent directory or cancel |
| :material-gamepad-circle-up: | Opens a menu with actions on selected item(s)<ul><li>Copy (to destination directory)</li><li>Move (to destination directory)</li><li>Symlink</li><li>Rename (appears only if 1 item is selected)</li><li>Delete</li><li>Disk used</li></ul> |
| :material-gamepad-circle-left: | Opens system actions menu:<ul><li>Select all</li><li>Select none</li><li>New directory</li><li>Disk info</li><li>Quit</li></ul> |
| ++"Select"++ | Select highlighted item (selected items are displayed in red) |
| ++"Start"++ | Open highlighted directory in destination panel (if a file is highlighted, open current directory in destination panel) |
| ++"Function"++ + ++"Start"++ | Quit OD Commander and return to EmulationStation |

!!! info "Accessing external drives"

    You can even access external drives (i.e., connected usb drives via otg dongle) by navigating to the `/media` path. There you will find the external drives listed (including the partitions used by KNULLI).

## Editing files using OD Commander

It is also possible to edit files directly from your KNULLI device using OD Commander. It is **not the most comfortable/ergonomic way** to do it, but if needed just highlight the file you want to edit, open it using the *South face button* (:material-gamepad-circle-down:) and click *view* from the emergent menu. Once in the file navigate through the lines using the D-pad. Press the *South or North face button* (:material-gamepad-circle-down:/:material-gamepad-circle-up:) to open a new menu when you can select one of the next options:

* Edit line
* Duplicate line
* Insert line before
* Insert line after
* Remove line

For text editing, use the on-screen keyboard. Keep in mind that changes are automaticaly saved so be careful when editing files. Once you are done editing, push the *East face button* (:material-gamepad-circle-right:) for closing (and automatically saving) the file.