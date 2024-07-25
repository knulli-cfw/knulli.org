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

!!! danger "Re-creating default settings"

     **Normalerweise** erfordern KNULLI-Updates **NICHT** dass du einzelne Dateien oder gar den ganzen `system`-Ordner auf Werkseinstellungen zurücksetzt. In **SEHR seltenen Fällen** kann es allerdings nötig sein, deine Einstellungen an neue KNULLI-Standardeinstellungen anzupassen. In diesen Fällen ist es häufig am einfachsten, die entsprechenden Werkseinstellungen wiederherzustellen, entweder in dem man einzelne Dateien oder ganze Ordner zurücksetzt. Du kannst mehr über das Thema im Abschnitt [Werkseinstellungen](../../configure/reset-to-factory-settings) erfahren. Du solltest dies aber **NIEMALS** tun, wenn du dir nicht absolut sicher bist, dass es notwendig ist!
