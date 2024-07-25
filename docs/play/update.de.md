#  :material-update: KNULLI aktualisieren

!!! info "OTA-Updates"

    Batocera unterstützt OTA-Updates (over-the-air), die direkt aus der EmulationStation-GUI heraus gestartet werden können. Auch KNULLI zeigt dir bereits das OTA-Update-Menü an. Leider haben wir aber **noch keine OTA-Server** eingerichtet. Bis wir das getan haben, müssen wir dich leider bitten, dein KNULLI-Gerät **manuell** zu aktualisieren.

## Manuelles Update

Du kannst die KNULLI-Installation auf deinem Gerät aktualisieren, indem du das neueste **Boot-Package** für dein Gerät herunterlädst und manuell die `batocera`-Datei auf deinem Gerät ersetzt.

1. Lade das aktuelle **Boot-Package** für dein Gerät von unserer [Releases-Seite](https://github.com/knulli-cfw/distribution/releases/latest) herunter, indem du den folgenden Schritten folgst:
    * Scroll bis zum Ende des aktuellsten Releases, wo du die **Assets**-Liste findest.
    * Identifiziere das **Boot-Package** für dein jeweiliges Gerät indem du sicherstellst, dass
        * es den Namen deines Gerätes enthält (z.B. `rg35xx-h` für ein Gerät vom Typ Anbernic RG35XX-H).
        * das **Ende** des Dateinamens `boot.gz`, `boot.xz`,`boot.tar.gz` oder `boot.tar.xz` lautet.
        * die Datei eine Größe von etwa 1,5-2,0 GB hat.
    * Wenn unklar ist, welches Image für dein Gerät geeignet ist, kannst du im Abschnitt [Unterstützte Geräte](../../devices) überprüfen, welches Image du für dein Gerät herunterladen solltest.
2. Entpacke das komprimierte Archiv (z.B. mit [7-Zip](https://7-zip.org/)).
    * Dateien, deren Namen mit `tar.gz` oder `tar.xz` enden, sind komprimierte Dateien, die zunächst eine weitere komprimierte Datei enthalten. In diesem Fall musst du zunächst die `tar`-Datei aus der `gz`/`xz`-Datei extrahieren, bevor du dann den Inhalt der `tar`-Datei entpacken kannst.
3. Setz deine SD-Karte deiner KNULLI-Installation in deinen Kartenleser am Computer ein.
4. Ersetze die Datei `boot/batocera` auf der *BATOCERA*-Partition deiner SD-Karte durch die Datei `boot/batocera.update` aus dem heruntergeladenen Archiv indem du den folgenden Schritten folgst:
    * **Lösche** die existierende `batocera`-Datei **oder bennene sie um** (z.B. in `batocera.bak`) falls du sie behalten willst, z.B. um im Notfall zur vorherigen KNULLI-Version zurückkehren zu können. (Falls du bereits ein Backup einer vorherigen KNULLI-Version in diesem Ordner hast, solltest du es jetzt evtl. löschen um etwas Platz zu schaffen.)
    * **Kopiere** die Datei `batocera.update`, die du aus dem **Boot-Package** extrahiert hast, in den `boot`-Ordner der `batocera`-Partition deiner SD-Karte.
    * **Benenne** die datei `batocera.update` in `batocera` **um**.
5. Starte das Gerät erneut, um mit dem Updatevorgang zu beginnen!

## Den `system`-Ordner zurücksetzen

!!! danger "Den `system`-Ordner zurücksetzen"

     **Normalerweise** erfordern KNULLI-Updates **NICHT**, dass du den gesamten `system`-Ordner zurückgesetzt. Das Zurücksetzen des `system`-Ordners kommt dem **Zurücksetzen auf Werkseinstellungen** gleich. Dementsprechend ist es danach zwingend nötig, **alle deine Einstellungen erneut vorzunehmen**. Du solltest **NICHT** versuchen, den `system`-Ordner zurückzusetzen, wenn du dir nicht absolut sicher bist, dass es notwendig ist.

Wie du wahrscheinlich bereits weißt, sind **deine gesamten Einstellungen** in deinem `userdata/system`-Ordner gespeichert, wie im Abschnitt [Speicherort für Spiele](../add-games/game-storage) erklärt. In **SEHR seltenen Fällen** kann es nötig sein, nach einem Update einige Einstellungen auf neue KNULLI-Standardwerte zu setzen, indem die entsprechenden Dateien im `system`-Ordner **ersetzt** oder **angepasst** werden. Der einfachste Weg um dieses Ziel zu erreichen ist, die entsprechenden Dateien **order** den gesamten Ordner zu **entfernen**. Während des nächsten Bootvorgangs wird KNULLI die fehlenden Dateien mit neuen Dateien ersetzen, die dann die aktuellen KNULLI-Standardeinstellungen enthalten.

Wenn du eine einzelne Konfigurationsdatei (oder den gesamten `system`-Ordner) zurücksetzen musst oder möchtest, greif dazu zunächst auf deinen `userdata`-Ordner zu, wie du es sonst auch machst. Wir **empfehlen dringend**, dass du die betroffenen Dateien **oder** den `system`-Ordner **umbenennst** statt zu löschen, indem du `.bak` ans Ende des Dateinamens schreibst (also z.B. den `system`-Ordner in `system.bak` umbenennst).

Anschließend kannst du dein KNULLI-Gerät neu starten. Es wird alle fehlenden Dateien und Ordner während des Bootvorgangs neu erzeugen. Du kannst jetzt entweder alle deine Einstellungen wieder händisch über die KNULLI-GUI vornehmen, oder die Konfigurationsdateien mit deiner `.bak`-Sicherung vergleichen und Zeile für Zeile alle Einstellungen übernehmen, die du behalten möchtest.
