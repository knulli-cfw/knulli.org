#  :material-folder-refresh: Auf Werkseinstellungen zurücksetzen

Seit KNULLI Gladiator II bringt das Betriebssystem eine eigene Funktion mit, um das Gerät direkt über EmulationStation (die KNULLI GUI) auf Werkseinstellungen zurückzusetzen. Falls du also mit einer frischen Konfiguration von vorn anfangen möchtest, aber keine Lust hast, alle deine ROMS, BIOS-Dateien etc. noch einmal zu kopieren, ist dies möglicherweise die Funktion die du suchst! Dabei wird automatisch deine **existierende PortMaster-Installation erhalten**.

Darüber hinaus hast du weiterhin die Möglichkeit, den Reset manuell durchzuführen, z.B. falls du die GUI nicht mehr öffnen kannst. In diesem Fall wird deine **PortMaster-Installation nicht erhalten**. Stattdessen enthält die Anleitung aber die nötigen Schritte um den PortMaster-Installer wieder in der Ports-Kategorie sichtbar zu machen.

## Auf Werkseinstellungen zurücksetzen via EmulationStation

Um das Gerät auf Werkseinstellungen zurückzusetzen

* drück ++"Start"++ um das Hauptmenü zu öffnen
* gehe zu *Device Settings*
* wähle *Factory Reset*
* bestätige, dass du das Gerät wirklich zurücksetzen möchtest

## Manuell auf Werkseinstellungen zurücksetzen

!!! danger "Den gesamten `system`-Ordner zurücksetzen"

     **Normalerweise** erfordern KNULLI-Updates **NICHT**, dass du den gesamten `system`-Ordner zurückgesetzt. Das Zurücksetzen des `system`-Ordners kommt dem **Zurücksetzen auf Werkseinstellungen** gleich. Dementsprechend ist es danach zwingend nötig, **alle deine Einstellungen erneut vorzunehmen**. Du solltest **NICHT** versuchen, den `system`-Ordner zurückzusetzen, wenn du dir nicht absolut sicher bist, dass es notwendig ist.

Wie du wahrscheinlich bereits weißt, sind **deine gesamten Einstellungen** in deinem `userdata/system`-Ordner gespeichert, wie im Abschnitt [Speicherort für Spiele](../../play/add-games/game-storage) erklärt.

Wenn dein System sich nicht mehr Erwartungskonform verhält, nachdem du eine Einstellung geändert hast, und du die Änderung nicht rückgängig machen kannst, kannst du das Problem möglicherweise lösen, in dem du die entsprechende Konfigurationsdatei oder den gesamten `system`-Ordner zurücksetzt. In **SEHR seltenen Fällen** kann es auch nötig sein, nach einem Update einige Einstellungen auf neue KNULLI-Standardwerte zu setzen, indem die entsprechenden Dateien im `system`-Ordner **ersetzt** oder **angepasst** werden.

Der einfachste Weg um dieses Ziel zu erreichen ist, die entsprechenden Dateien **oder** den gesamten Ordner zu **entfernen**. Während des nächsten Bootvorgangs wird KNULLI die fehlenden Dateien mit neuen Dateien ersetzen, die dann die aktuellen KNULLI-Standardeinstellungen enthalten.

Wenn du eine einzelne Konfigurationsdatei (oder den gesamten `system`-Ordner) zurücksetzen musst oder möchtest, greif dazu zunächst auf deinen `userdata`-Ordner zu, wie du es sonst auch machst, oder benutz den mitgelieferten *OD-Commander* aus der Kategorie *Ports*. Wir **empfehlen dringend**, dass du die betroffenen Dateien **oder** den `system`-Ordner **umbenennst** statt zu löschen, indem du `.bak` ans Ende des Dateinamens schreibst (also z.B. den `system`-Ordner in `system.bak` umbenennst). Auf diese Weise kannst du deine alten Einstellungen jederzeit wiederherstellen, oder einzelne Dateien/Zeilen aus deiner alten Konfiguration übernehmen.

#### Dateien und Ordner mit OD-Commander umbenennen

* Öffne die Kategorie *Ports*.
* Starte *OD-Commander*.
* Du solltest jetzt bereits den Inhalt deines `userdata`-Ordners auf der linken Seite sehen, du kannst dies u.A. an der Überschrift `/userdata` erkennen. Falls du noch nicht dort bist, navigiere zunächst nach `/userdata`, indem du mit oben/unten auf dem D-Pad hoch und runter navigierst und mit OK/Zurück in Ordner hineingehst oder sie wieder verlässt.
* Lokalisiere den `system`-Ordner auf der linken Bildschirmseite.
* Während der Fokus auf dem `system`-Ordner liegt
     * öffne **entweder** den Ordner und suche darin die einzelnen Dateien oder Unterordner, die du zurücksetzen möchtest
     * **oder** halte den Fokus einfach auf dem `system`-Ordner falls du den ganzen Ordner zurücksetzen möchtest.
* Wenn du den Fokus auf einer Datei oder einem Ordner hast, die/den du zurücksetzen möchtest
    * drück ++"X"++ um das Datei-Menü zu öffnen.
    * wähle *Rename*.
    * benutz die On-Screen-Tastatur um den Datei-/Ordnernamen zu ändern.

#### Konfigurationsdateien zurücksetzen

Anschließend kannst du dein KNULLI-Gerät neu starten. Es wird alle fehlenden Dateien und Ordner während des Bootvorgangs neu erzeugen. Du kannst jetzt entweder alle deine Einstellungen wieder händisch über die KNULLI-GUI vornehmen, oder die Konfigurationsdateien mit deiner `.bak`-Sicherung vergleichen und Zeile für Zeile alle Einstellungen übernehmen, die du behalten möchtest.
