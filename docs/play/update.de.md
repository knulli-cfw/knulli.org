#  :material-update: KNULLI aktualisieren

Wenn du KNULLI aktualisieren möchtest, hast du normalerweise drei Möglichkeiten:

* Du kannst die eingebaute OTA-Funktion (over the air) nutzen um deine KNULLI-Installation zu aktualisieren
* Du kannst KNULLI **erneut flashen** um eine saubere Installation der neuen Version zu bekommen
* Du kannst KNULLI manuell aktualisieren, in dem du das neueste **Boot-Package** aufspielst

## OTA Updates

!!! info "OTA benötigt eine funktionierende Internetverbindung"

    Geräte, die nicht W-LAN-fähig sind, können nicht via OTA aktualisiert werden, da KNULLI eine aktive Internetverbindung benötigt, um OTA-Updates herunterzuladen!

Bevor du versuchst, KNULLI erneut zu flashen oder manuall zu aktualisieren, solltest du zunächst prüfen, ob das Update, das du installieren möchtest, auch als OTA-Update zur Verfügung steht:

* Drück ++"Start"++ um das Hauptmenü zu öffnen
* Öffne *Updates & Downloads*
* Stelle sicher dass *Check For Updates* auf deinem Gerät *aktiviert* ist um in Zukunft direkt nach dem Hochfahren auf neue Updates aufmerksam gemacht zu werden
* Stelle *Update Type* auf *Stable* (*Alpha* und *Development* sind derzeit auf KNULLI-Entwickler und Alpha-Tester begrenzt)
* Wähle *Start Update* um zu prüfen, ob Updates zur Verfügung stehen
* Falls ein Update verfügbar ist, kannst du jetzt einfach den Anweisungen auf dem Bildschirm folgen
* Updates können ein Bisschen dauern - wir empfehlen daher, Updates nur durchzuführen, wenn dein Gerät via Ladekabel an eine Stromquelle angeschlossen ist
* Du solltest das Gerät **NIEMALS** unterbrechen oder ein Spiel starten während ein Update ausgeführt wird!

!!! info "Alpha-Updates"

    Für reguläre KNULLI-Nutzer sind derzeit **ausschließlich** Updates vom Typ *stable* verfügbar. Der Zugriff auf *alpha*-Updates wird ausschließlich unseren **KNULLI-Alpha-Testern** gewährt. Falls du Interesse hast, ein Alpha-Tester zu werden, solltest du einen Blick auf den Abschnitt [Contribute](../community/contribute.md) werfen.

## Größere Updates

Größere KNULLI-Updates (z.B. das Update von **20240721** auf **Firefly**) erfordern zwingend, dass die KNULLI-CFW erneut geflasht wird und alle deine **Einstellungen zurückgesetzt** werden. Dementsprechend werden größeren KNULLI-Updates von vornherein ganz bewusst keine **Boot-Packages** beigelegt. Wenn du ein größeres KNULLI-Update installieren möchtest, empfehlen wir dir dringend, vorher eine Sicherheitskopie deines  [userdata-Ordners](./add-games/game-storage.md) zu machen. Falls du ein Dual-SD-Karten-Setup verwendest **musst** du zusätzlich auch den `system`-Ordner aus deinem [userdata-Ordner](./add-games/game-storage.md) entfernen, damit KNULLI ihn erneut anlegen und dabei alle neuen Standardeinstellungen für dich setzen kann. Nach Abschluss deiner KNULLI-Neuinstallation kannst du dann deine Daten aus der Sicherungskopie wiederherstellen.

Falls du weitere Hilfe dabei brauchst, ein größeres Update zu installieren, solltest du einen Blick auf den [Major-Updates-Guide](../guides/major-updates.md) werfen.

!!! danger "Der system-Ordner"

    Nach einem größeren Update solltest du **niemals den `system`-Ordner einer vorherigen Version wiederherstellen**. Wenn du genau weißt, was du tust, kannst du möglicherweise einzelne Einstellungen (z.B. remap-Dateien) aus deinem alten `system`-Ordner übernehmen. Du solltest dir aber darüber im Klaren sein, dass durch das Update neue Optionen hinzugefügt und alte entfernt oder umbenannt wurden. Es ist **extrem** wahrscheinlich, dass es zu Fehlern und Problemen führt, wenn du versuchst, die neue KNULLI-Version mit den alten Eintellungen zu verwenden.

## Kleine Updates

!!! info "OTA-Updates"

    Batocera unterstützt OTA-Updates (over-the-air), die direkt aus der EmulationStation-GUI heraus gestartet werden können. Auch KNULLI zeigt dir bereits das OTA-Update-Menü an. Leider haben wir aber **noch keine OTA-Server** eingerichtet. Bis wir das getan haben, müssen wir dich leider bitten, dein KNULLI-Gerät **manuell** zu aktualisieren.

Du kannst die KNULLI-Installation auf deinem Gerät aktualisieren, indem du das neueste **Boot-Package** für dein Gerät herunterlädst und manuell die `batocera`-Datei auf deinem Gerät ersetzt.

1. Lade das aktuelle **Boot-Package** für dein Gerät von unserer [Releases-Seite](https://github.com/knulli-cfw/distribution/releases/latest) herunter, indem du den folgenden Schritten folgst:
    * Scroll bis zum Ende des aktuellsten Releases, wo du die **Assets**-Liste findest.
    * Identifiziere das **Boot-Package** für dein jeweiliges Gerät indem du sicherstellst, dass
        * es den Namen deines Gerätes enthält (z.B. `rg35xx-h` für ein Gerät vom Typ Anbernic RG35XX-H).
        * das **Ende** des Dateinamens `boot.gz`, `boot.xz`,`boot.tar.gz` oder `boot.tar.xz` lautet.
        * die Datei eine Größe von etwa 1,5-2,0 GB hat.
    * Wenn unklar ist, welches Image für dein Gerät geeignet ist, kannst du im Abschnitt [Unterstützte Geräte](../devices/index.md) überprüfen, welches Image du für dein Gerät herunterladen solltest.
2. Entpacke das komprimierte Archiv (z.B. mit [7-Zip](https://7-zip.org/)).
    * Dateien, deren Namen mit `tar.gz` oder `tar.xz` enden, sind komprimierte Dateien, die zunächst eine weitere komprimierte Datei enthalten. In diesem Fall musst du zunächst die `tar`-Datei aus der `gz`/`xz`-Datei extrahieren, bevor du dann den Inhalt der `tar`-Datei entpacken kannst.
3. Setz deine SD-Karte deiner KNULLI-Installation in deinen Kartenleser am Computer ein.
4. Ersetze die Datei `boot/batocera` auf der *BATOCERA*-Partition deiner SD-Karte durch die Datei `boot/batocera.update` aus dem heruntergeladenen Archiv indem du den folgenden Schritten folgst:
    * **Lösche** die existierende `batocera`-Datei **oder bennene sie um** (z.B. in `batocera.bak`) falls du sie behalten willst, z.B. um im Notfall zur vorherigen KNULLI-Version zurückkehren zu können. (Falls du bereits ein Backup einer vorherigen KNULLI-Version in diesem Ordner hast, solltest du es jetzt evtl. löschen um etwas Platz zu schaffen.)
    * **Kopiere** die Datei `batocera.update`, die du aus dem **Boot-Package** extrahiert hast, in den `boot`-Ordner der `batocera`-Partition deiner SD-Karte.
    * **Benenne** die datei `batocera.update` in `batocera` **um**.
5. Starte das Gerät erneut, um mit dem Updatevorgang zu beginnen!

!!! danger "Standardeintstellungen wiederherstellen"

     **Normalerweise** erfordern kleinere KNULLI-Updates **NICHT** dass du einzelne Dateien oder gar den ganzen `system`-Ordner auf Werkseinstellungen zurücksetzt. In **SEHR seltenen Fällen** kann es allerdings nötig sein, deine Einstellungen an neue KNULLI-Standardeinstellungen anzupassen. In diesen Fällen ist es häufig am einfachsten, die entsprechenden Werkseinstellungen wiederherzustellen, entweder in dem man einzelne Dateien oder ganze Ordner zurücksetzt. Du kannst mehr über das Thema im Abschnitt [Werkseinstellungen](../configure/reset-to-factory-settings.md) erfahren. Du solltest dies aber **NIEMALS** tun, wenn du dir nicht absolut sicher bist, dass es notwendig ist!
