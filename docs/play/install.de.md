# :material-progress-check: KNULLI installieren

Um KNULLI installieren zu können, musst du als erstes ein passendes Image für dein Gerät herunterladen. Anschließend kannst du das Image auf eine passende SD-Karte (oder den internen Speicher deines Geräts) flashen. Der Installationvorgang beginnt, wenn du dein Gerät zum ersten Mal mit der geflashten SD-Karte (oder dem geflashten internen Speicher) bootest.

## Schritt 1: Image herunterladen [![Latest](https://img.shields.io/github/release/knulli-cfw/distribution.svg?labelColor=111111&color=5998FF&label=Latest&style=flat#only-light)](https://github.com/knulli-cfw/distribution/releases/latest)[![Latest](https://img.shields.io/github/release/knulli-cfw/distribution.svg?labelColor=dddddd&color=5998FF&label=Latest&style=flat#only-dark)](https://github.com/knulli-cfw/distribution/releases/latest)

* Lade die aktuellste Version von KNULLI für dein Gerät von der [Release-Seite](https://github.com/knulli-cfw/distribution/releases/latest) herunter.
    * Du findest Download-Links für alle Geräte und Plattformen, die von uns unterstützt werden, in der Tabelle "`Installation Package Downloads`".
    * Stelle sicher, dass du das richtige Image für dein Gerät herunterlädst. Wenn du KNULLI z.B. auf einem [RG35XX](../../devices/anbernic/rg35xx) installieren möchtest, musst du das `rg35xx`-Image herunterladen.
    * Wenn unklar ist, welches Image für dein Gerät geeignet ist, kannst du im Abschnitt [Unterstützte Geräte](../../devices) überprüfen, welches Image du für dein Gerät herunterladen solltest.

!!! warning "Falls dein Gerät *nicht* ist der Liste der `Installation Package Downloads` enthalten ist, gibt es noch keine öffentlich zugängliche Release-Version von Knulli für dein Gerät. Du solltest *nicht* versuchen, ein Installationspaket für ein anderes Gerät zu installieren."

## Schritt 2: Speicher flashen

* Entpacke zunächst das komprimierte Image (z.B. mit [7-Zip](https://7-zip.org/)).
* Anschließend kannst du das Image mit einem entsprechenden Tool auf deine SD-Karte oder den Gerätespeicher flashen.
    * Geeignete Software zum Flashen von Images sind u.a. [Rufus](https://rufus.ie/), [Balena](https://balena.io), [Raspberry Pi Imager](https://www.raspberrypi.com/software/) und [Win32 Disk Imager](https://sourceforge.net/projects/win32diskimager/). Falls du die Kommandozeile beherrschst, kannst du auch `dd` verwenden.

Während des Flashens werden mehrere Partitionen angelegt, die auf deinem Computer als einzelne Laufwerke angezeigt werden. Die meisten Laufwerke können nur von Linux-Betriebssystemen gelesen werden, unter Windows erscheinen diese Laufwerke unbrauchbar.

!!! danger "Du solltest auf keinen Fall die für Windows unleserlichen KNULLI-Partitionen formatieren, auch wenn Windows es dir vorschlägt."

Nur das Laufwerk *BATOCERA* wird von KNULLI mit FAT32 formatiert, damit du auch von Windows aus darauf zugreifen kannst, um manuelle Updates zu installieren, wie im Abschnitt [Aktualisieren](../update) beschrieben. Auf diesem Laufwerk liegt allerdings nur das KNULLI-Betriebssystem, du solltest hier keine Spiele ablegen. Im Abschnitt [Spiele hinzufügen](../add-games) wirst du lernen, wie du deine Spiele auf das Gerät laden kannst - *nachdem du es zum ersten Mal hochgefahren hast*.

!!! warning "Die *SHARE*-Partition auf volle Größe ausdehnen"

    Beim Flashen wird eine Partition namens *SHARE* angelegt, auf der später deine Spiele etc. abgelegt werden können. Die *SHARE*-Partition wird allerdings erst beim ersten Booten auf ihre volle Größe ausgedehnt. Es ist *zwingend* notwendig, KNULLI einmal hochzufahren und die Installation abzuschließen, *bevor* du auf die *SHARE*-Partition zugreifen kannst. Wirf einen Blick in den Abschnitt [Spiele hinzufügen](../add-games) um zu erfahren, wie du Spiele und andere Dateien auf dein KNULLI-Gerät aufspielst."

## Schritt 3: Boote das Gerät

* Stecke die SD-Karte in den dafür vorgesehen Slot während das Gerät ausgeschaltet ist.
    * Falls das Gerät einen zweiten SD-Karten-Slot hat, solltest du vor dem ersten Hochfahren sicherstellen, dass der zweite Slot leer ist.
* Schalte das Gerät ein.
    * Achtung: Bei manchen Geräte muss die Bootreihenfolge so angepasst werden, dass die SD-Karte als erstes angesprochen wird. Überprüfe im Zweifelsfall die Dokumentation für dein Gerät, um zu prüfen, ob es in deinem Fall notwendig ist.
* Beim ersten Booten läuft KNULLI selbstständig durch den Installationsvorgang - bleib geduldig, einige Schritte können ein paar Minuten dauern!
* Am Ende der Installation wird das Gerät automatisch EmulationStation laden, die grafische Benutzeroberfläche von KNULLI. Die Installation ist jetzt abgeschlossen und du kannst loslegen!

## Nächste Schritte

* [Netzwerk konfigurieren](../../configure/networking)
* [Controller konfigurieren](../../configure/controls)
* [Spiele hinzufügen](../../play/add-games)
* [Scrapen](../../play/scraping)
* [Themes installieren und konfigurieren](../../configure/themes)
