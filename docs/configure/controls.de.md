# :material-controller: Controller

!!! danger "Hardware-Setup nicht mit der Tastebelegung für Spiele verwechseln!"

    Verwechsel die Einrichtung des Controllers nicht mit der Anpassung der Tastenbelegung für einzelne **Spiele** oder **Emulatoren**! In diesem Abschnitt geht es um die **generelle** Einrichtung der **Hardware**. Wenn du die Tastenbelegung für einzelne **Spiele**, emulierte Konsolen oder die dafür eingesetzten **Emulatoren** anpassen möchtest, schau bitte in die Anleitung für den jeweiligen Emulator (z.B. [Retroarch](./retroarch/controls.md)).

Obwohl KNULLI eigentlich für Handheld-Geräte entwickelt wurde, unterstützt es zusätzlich viele verschiedene Arten von USB- und Bluetooth-Controllern.

Bevor du einen Controller an deinem KNULLI-Gerät verwenden kannst, kann es allerdings nötig sein, die Tasten des Controllers ihren jeweiligen Funktionen zuzuordnen.

## Der eingebaute "Controller"

Die meisten KNULLI-kompatiblen Geräte sind Handhelds mit fest verbauten Eingabemöglichkeiten. Dazu gehört üblicherweise ein **Steuerkreuz** (:material-gamepad:, "directional pad" kurz: **D-pad**), die sogenannten **Face-Buttons** (:material-gamepad-circle:), zwei **Schultertasten** (++"L1"++, ++"R1"++) und zwei **Schulter-Trigger** (++"L2"++, ++"R2"++) sowie die Tasten ++"Start"++ und ++"Select"++. Darüber hinaus hat dein Gerät wahrscheinlich eine **Power-Taste** zum Ein- und Ausschalten, und eine **Funktionstaste** (++"Function"++). **Zusätzlich** hat dein Gerät möglicherweise noch **Analog-Sticks** und eine **Reset-Taste**. Wenn du nicht weißt, welche Knöpfe dein Gerät hat und wo sie sich befinden, wird bitte einen Blick ins Handbuch des Geräts.

KNULLI bringt eine ganze Reihe vordefinierter **Hotkey-Shortcuts** mit - Tastenkombinationen, mit denen du dein Spiel speichern, laden und beenden kannst, Screenshots anfertigen kannst, uvm. Wir empfehlen dir dringend, die Hotkey-Shortcuts zu **lernen**. Eine Liste aller möglichen Hotkey-Shortcuts findest du im Abschnitt  [Hotkey Shortcuts](../play/hotkey-shortcuts.md).

!!! info "Controller-Namen"

    Je nachdem, welches Gerät du verwendest, wird der fest verbaute "Controller" deines Geräts einen eigenen Namen haben. Auf dem Anbernic RG40XX H beispielsweise heißt der eingebaute Controller `Anbernic RG40XX-H Controller`.

## Controller zuweisen

Nachdem du einen Controller verbunden hast, wird er **automatisch** dem **nächsten Spieler** zugeordnet, d.h. der erste Controller, den du verbindest, wird automatisch dem ersten Spieler zugewiesen. Wenn du einen weiteren Controller verbindest, wird er automatisch dem zweiten Spieler zugewiesen. Wenn ein Controller ausscheidet (z.B. weil er ausgeschaltet wurde, getrennt wurde oder der Akku leer ist), rücken alle übrigen Controller automatisch auf: Wenn z.B. der Controller des ersten Spielers getrennt wird, wird der Controller des zweiten Spielers automatisch dem ersten Spieler zugewiesen, usw.

### Den eingebauten "Controller" für Spieler 1 verwenden

Für den Fall, dass du immer den eingebauten "Controller" für Spieler 1 verwenden möchtest, auch wenn weitere Controller angeschlossen sind

* drücke ++"Start"++ um das Hauptmenü zu öffnen
* gehe zu *Controller & Bluetooth Settings*
* suche nach der Option *Use Handheld Controls for Player 1* und schalte sie *ein*

!!! danger "Controller können nicht (neu) zugewiesen werden während ein Spiel läuft"

    Bitte **sei dir bewusst** dass die automatische Controller-Zuweisung **nicht In-Game funktioniert** (ausgenommen bei einigen wenigen Ports, z.B. *TMNT: Shredder's Revenge*). Du solltest daher **erst** alle Controller **verbinden** **bevor** du ein Spiel startest und du solltest das Spiel beenden bevor du einen Controller deaktivierst.

## Controller einrichten

!!! danger "Versuch nicht, die eingebauten Controller erneut zu einzurichten"

    Jedes KNULLI-Image ist **optimiert** für das jeweilige Gerät, für das das Image vorgesehen ist. Insbesondere die eingebauten "Controller" sind bereits **fertig konfiguriert**. Du solltest **nicht** versuchen, die Einrichtung über das Menü *Controller & Bluetooth Settings* erneut durchzuführen. Bei manchen Geräten könntest du damit z.B. die virtuellen Eingabemöglichkeiten **dauerhaft löschen** (z.B. die **D-Pad-als-virtueller-Stick-Zuordnung** für Geräte ohne Analog-Sticks, die du üblicherweise mit der Tastenkombination ++"Function"+++++"Select"++ ein- und ausschalten kannst). Wenn du die Tastenbelegung für ein **Spiel** oder eine Konsole anpassen möchtest, erledige das bitte in den dafür vorgesehenen Emulatoreinstellungen. Das Menü *Controller & Bluetooth Settings* ist **nicht** der richtige Ort um Tastenbelegungen für einzele Spiele oder Konsolen zu konfigurieren!

Um einen Controller einzurichten, musst du alle Buttons und Richtungseingaben ihren jeweiligen Funktionen zuordnen. Drücke dazu zunächst auf ++"Start"++ um das Hauptmenü zu öffnen, gehe zu *Controller & Bluetooth Settings* und wähle dort *Controller Mapping*. Folge jetzt einfach den Anweisungen auf dem Bildschirm. Du wirst zunächst aufgefordert, einen beliebigen Knopf auf dem Controller, den du einrichten möchtest, gedrückt zu halten. Anschließend wirst du Schritt für Schritt durch die Einrichtung geführt. Drücke einfach immer den Button, der am besten zu dem Button passt, der gerade auf dem Bildschirm angezeigt wird.

Falls du mal danebendrückst, mach dir keine Sorgen: Du kannst jederzeit in das Menü zurückkehren und die Einrichtung erneut versuchen.

!!! danger "Face-Buttons werden anhand der "Himmelsrichtung" identifiziert!"
    KNULLI unterstützt verschiedene Handhelds und Controller von verschiedenen Herstellern. Abhängig davon, welches Gerät du gerade benutzt, kann die Beschriftung der "Face-Buttons" sich voneinander unterscheiden. Deshalb identifiziert KNULLI diese Tasten nicht anhand ihrer Beschriftung, sondern anhand ihrer "Himmelsrichtung".
    
    Beispielsweise ist der **nördliche** der vier Face-Buttons (:material-gamepad-circle-up:) auf dem SNES-Controller mit ++"X"++ beschriftet. Die gleiche Taste ist auf dem Xbox-Controller mit ++"Y"++ beschriftet, auf dem PlayStation-Controller mit ++"△"++.

    Achte darauf, dass du die **Face-Buttons** (:material-gamepad-circle-up: :material-gamepad-circle-right: :material-gamepad-circle-down: :material-gamepad-circle-left:) **nicht** mit den **Steuerkreuz-Richtungen** (:material-gamepad-up: :material-gamepad-right: :material-gamepad-down: :material-gamepad-left:) verwechselst! Im Abschnitt [Hotkey-Shortcuts](../play/hotkey-shortcuts.md) findest du weitere Informationen bzgl. der Face-Buttons.

