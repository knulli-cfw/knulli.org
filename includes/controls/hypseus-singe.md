### Hypseus-singe ([Daphne](../../../systems/daphne))

| Button Combo | Action |
| -- | -- |
| ++"SELECT"+"START"++ | Quit Game |
| ++"SELECT"++ | Coin |
| ++"START"++ | Start |
| ++"{{ btn_south }}"++ | Button 1 |
| ++"{{ btn_east }}"++ | Button 2 |
| ++"{{ btn_north }}"++ | Button 3 |

#### Notes:

* To add/change mapping you can edit `/storage/.config/game/configs/hypseus/hypinput.ini` under `[KEYBOARD]` section by changing third number for a function from `0` (disabled) to a corresponding joystick value.  You can identify joystick values by running `jstest /dev/input/js0` over ssh.
* For example the following would assign `quit` to ++"L1"++ and `pause` to ++"R1"++

    ``` bash
    [KEYBOARD]
    KEY_QUIT = SDLK_ESCAPE 0 5
    KEY_PAUSE = SDLK_p 0 6
    ```

