# :material-progress-check: KNULLI installieren

Um KNULLI installieren zu können, musst du als erstes ein passendes Image für dein Gerät herunterladen. Anschließend kannst du das Image auf eine passende SD-Karte (oder den internen Speicher deines Geräts) flashen. Der Installationvorgang beginnt, wenn du dein Gerät zum ersten Mal mit der geflashten SD-Karte (oder dem geflashten internen Speicher) bootest.

## Schritt 1: Image herunterladen [![Latest](https://img.shields.io/github/release/knulli-cfw/distribution.svg?labelColor=111111&color=5998FF&label=Latest&style=flat#only-light)](https://github.com/knulli-cfw/distribution/releases/latest)[![Latest](https://img.shields.io/github/release/knulli-cfw/distribution.svg?labelColor=dddddd&color=5998FF&label=Latest&style=flat#only-dark)](https://github.com/knulli-cfw/distribution/releases/latest)

* Lade die aktuellste Version von KNULLI für dein Gerät von der [Release-Seite](https://github.com/knulli-cfw/distribution/releases/latest) herunter.
    * Du findest Download-Links für alle Geräte und Plattformen, die von uns unterstützt werden, in der Tabelle "`Installation Package Downloads`".
    * Stelle sicher, dass du das richtige Image für dein Gerät herunterlädst. Wenn du KNULLI z.B. auf einem [RG35XX](../../devices/anbernic/rg35xx) installieren möchtest, musst du das `rg45xx`-Image herunterladen.
    * Wenn unklar ist, welches Image für dein Gerät geeignet ist, kannst du im Abschnitt [Unterstützte Geräte](../../devices) überprüfen, welches Image du für dein Gerät herunterladen solltest.

## Schritt 2: Speicher flashen

* Entpacke zunächst das komprimierte Image (z.B. mit [7-Zip](https://7-zip.org/)).
* Anschließend kannst du das Image mit einem entsprechenden Tool auf deine SD-Karte oder den Gerätespeicher flashen.
    * Geeignete Software zum Flashen von Images sind u.A. [Rufus](https://rufus.ie/), [Balena](https://balena.io), [Raspberry Pi Imager](https://www.raspberrypi.com/software/) und [Win32 Disk Imager](https://sourceforge.net/projects/win32diskimager/). Falls du die Kommandozeile beherrschst, kannst du auch `dd` verwenden.

## Schritt 3: Boote das Gerät

* (Bei Geräten mit SD-Karte): Steck die SD-Karte in den dafür vorgesehen Slot während das Gerät ausgeschaltet ist und schalte das Gerät danach ein.
    * Achtung: Bei manchen Geräte muss die Bootreihenfolge so angepasst werden, dass die SD-Karte als erstes angesprochen wird. Überprüfe im Zweifelsfall die Dokumentation für dein Gerät, um zu prüfen, ob es in deinem Fall notwendig ist.
* Beim ersten Booten läuft KNULLI selbstständig durch den Installationsvorgang und startet das Gerät automatisch neu, sobald die Installation abgeschlossen ist.
* Am Ende des Reboots wird das Gerät automatisch EmulationStation laden, die grafische Benutzeroberfläche von KNULLI. Die Installation ist jetzt abgeschlossen und du kannst loslegen!

---

## Zusätzliche Hinweise

* Das KNULLI-Betriebssystem ist auf einer ext4-Partition abgelegt, die nur von Linux-Betriebssystemen gelesen werden kann. Windows kann das Dateisystem ext4 nicht ohne zusätzliche Software lesen. Es ist derzeit **nicht** möglich, über Windows direkt auf die primäre KNULLI-Partition zuzugreifen, um Spiele oder andere Nutzerdaten aufzuspielen. Windows-Nutzer können Daten allerdings bequem via W-LAN auf das Gerät spielen, weitere Hinweise dazu findest du im Abschnitt [Spiele hinzufügen](../add-games).
* Für Geräte, die einen zweiten SD-Karten-Slot haben, kann eine zweite SD-Karte als ext4, FAT32 oder exFAT formatiert werden. (FAT32 und exFAT sind Dateisysteme, die sowohl von Windows als auch von Linux gelesen werden können.) KNULLI wird die zweite SD-Karte automatisch während des Bootvorgangs erkennen und als Speichermedium für Spiele bereitstellen.
* KNULLI-Images für x86-Geräte enthalten ein Installationsprogramm, das in der grafischen Benutzeroberfläche EmulationStation im Menü "Tools" zu finden ist.

## Nächste Schritte

* [Spiele hinzufügen](/play/add-games)
* [Netzwerk konfigurieren](/configure/networking)
* [Themes installieren und konfigurieren](/configure/themes)
