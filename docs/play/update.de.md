#  :material-update: KNULLI aktualisieren

Auf Geräten, die mit dem Internet verbunden werden können, kann KNULLI direkt "Over the Air" (OTA) aktualisiert werden. Alternativ kann die KNULLI-Installation auf deinem Gerät auch aktualisiert werden, in dem du das Update herunterlädst und manuell installierst.

## Option 1: OTA-Updates

Wenn dein Gerät eine aktive Internetverbindung hat, kannst du KNULLI direkt aus EmulationStation heraus aktualisieren:

1. Öffne das Hauptmenü, in dem du den ++"Start"++-Button drückst.
2. Wähle `Updates & Downloads`.
3. Gehe zu `Start updates`.

!!! info "Du kannst mit dem Schalter *Check for updates* einstellen, ob du über neue Updates informiert werden möchtest. Unter *Update type* kannst du einstellen, ob du nur "stabile" Releases (*Stable*) oder auch prototypische Vorabversionen (*Butterfy*) installieren möchtest."

## Option 2: Manuelles Update

Wenn dein Gerät keinen Internetzugang hat, oder OTA-Updates aus anderen Gründen nicht möglich sind, kannst du deine KNULLI-Installation auch manuell aktualisieren.

1. Lade das aktuelle Update (`boot.gz`) für dein Gerät von der [Releases-Seite](https://github.com/knulli-cfw/distribution/releases/latest) herunter.
    * Du findest Download-Links für alle Geräte und Plattformen, die von uns unterstützt werden, in der Tabelle "`Installation Package Downloads`".
    * Stelle sicher, dass du das richtige Image für dein Gerät herunterlädst. Wenn du KNULLI z.B. auf einem [RG35XX](../../devices/anbernic/rg35xx) installieren möchtest, musst du das `rg45xx`-Image herunterladen.
    * Wenn unklar ist, welches Image für dein Gerät geeignet ist, kannst du im Abschnitt [Unterstützte Geräte](../../devices) überprüfen, welches Image du für dein Gerät herunterladen solltest.
2. Entpacke das komprimierte Update  (z.B. mit [7-Zip](https://7-zip.org/)).
3. Setz deine SD-Karte deiner KNULLI-Installation in deinen Kartenleser am Computer ein.
4. Ersetze die Datei `boot/knulli` auf der `KNULLI`-Partition deiner SD-Karte durch die Datei `boot/knulli.update` aus dem heruntergeladenen Archiv.
5. Starte das Gerät erneut, um mit dem Updatevorgang zu beginnen!
