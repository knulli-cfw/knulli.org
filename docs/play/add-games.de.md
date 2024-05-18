# :material-layers-plus: Spiele zu KNULLI hinzufügen

Auf dieser Seite findest du alle Möglichkeiten, die KNULLI bereitstellt, um Spiele auf dein Gerät zu laden. Abhängig von dem Gerät, das du benutzt, und den Funktionen, die das Gerät bietet, kannst du unter Umständen aber nicht alle Möglichkeiten nutzen. *(Wenn dein Gerät beispielsweise keine geeignete Hardware hat, um einem Netzwerk beizutreten, kannst du keine Daten via Netzwerk übertragen.)*

Innerhalb von KNULLI wird das Verzeichnis, in dem du deine Nutzerdaten ablegen kannst, als `/userdata` addressiert. Im Ordner `/userdata` befinden sich weitere Unterordner, in denen du Spiele und weitere Dateien ablegen kannst. Die wichtigsten Ordner für dich sind folgende:

* `/userdata`
    * `/roms` ist der Ordner, in dem du deine Spiele ablegen kannst. Der Ordner enthält bereits diverse Unterordner für verschiedene Systeme. Leg deine Spiele einfach in den Ordner des Systems, für das die Spiele entwickelt wurden.
    * `/bios` ist der Ordner, in dem du BIOSe ablegen kannst.
    * `/music` ist der Ordner, in dem du MP3s ablegen kannst, die in EmulationStation als Hintergrundmusik abgespielt werden können.
    * `/saves` ist der Ordner, in dem deine gespeicherten Spielstände abgelegt werden.
    * `/screenshots` ist der Ordner, in dem deine gespeicherten Screenshots abgelegt werden.
    * `/system` ist der Ordner, der deine Einstellungen enthält. Du solltest hier keine Änderungen vornehmen, wenn du nicht weißt, was du tust. Es kann aber nicht schaden, von diesem Ordner regelmäßige Backups anzufertigen.

!!! info "Normalerweise sollte eine frische KNULLI-Installation automatisch ein Verzeichnis für deine Spiele anlegen, das Unterverzeichnisse für alle unterstützten Systeme enthält. Falls das nicht geklappt hat, kannst du mit dem  ++"Start"++-Button das Hauptmenü von EmulationStation öffnen und unter "System Settings" die Option "CREATE GAME DIRECTORIES" auswählen, um die entsprechenden Unterverzeichnisse anzulegen."

!!! note "Für Details bzgl. der Dateien, die das jeweilige System benötigt, besuche bitte die entsprechenden Seiten im Abschnitt [System](/../system) in diesem Wiki."

## Option 1: Netzwerkübertragung

Netzwerkübertragung kann mit jedem Gerät genutzt werden, das mit dem Internet oder einem lokalen Netzwerk verbunden werden kann. (Das schließt nicht nur Geräte ein, die von sich aus W-LAN- oder kabelnetzwerkefähig sind, sondern auch Geräte, an die man einen externen USB-Dongle anschließen kann.)

Um Netzwerkübertragung zu nutzen, musst du als erstes die Netzwerkverbindungen deines Geräts einrichten. Im Abschnitt [Netzwerkverbindungen](../../configure/networking) findest du Details dazu. Um Daten an dein Gerät via Netzwerk übertragen zu können, benötigst du

* den Hostnamen und/oder die IP-Adresse deines Geräts.
* das Root-Passwort.

### Windows-Netzwerke (SMB)

KNULLI unterstützt, wie viele andere Betriebssysteme, das Windows-Netzwerkprotokoll SMB. Um Daten via SMB an dein Gerät zu übertragen, hast du verschiedene Möglichkeiten, je nachdem, welche Art von Computer du für die Übertragung nutzt:

- Windows:
    - Öffne ein Windows-Explorer-Fenster und gib in die Adressleiste entweder `\\[HOSTNAME]` oder `\\[IP-ADRESSE]` ein (ersetze dabei `[HOSTNAME]` mit dem Hostnamen bzw. `[IP-ADRESSE]` mit der IP-Adresse deines Geräts).
    - Du wirst möglicherweise nach Benutzername und Passwort gefragt, wenn die erweiterten Sicherheitseinstellungen aktiv sind.
    - Der Benutzername ist `root`, das Passwort wird dir als *Root password* im Bereich *Security* der *System settings* angezeigt.
- MacOS:
    - Öffne Finder und wähle *Gehe zu* und dann *Mit Server verbinden* aus dem Hauptmenü.
    - In der Adressleiste, die jetzt erscheint, musst du `smb://[IP-ADRESSE]` eingeben (ersetze `[IP-ADRESSE]` mit deiner IP-Adresse).
    - Du wirst möglicherweise nach Benutzername und Passwort gefragt, wenn die erweiterten Sicherheitseinstellungen aktiv sind.
    - Der Benutzername ist `root`, das Passwort wird dir als *Root password* im Bereich *Security* der *System settings* angezeigt.

Nachdem du dich erfolgreich eingeloggt hast, kannst du den Netzwerkordner `share` sehen, darin ist deine Nutzerdatenpartition (`/userdata`) enthalten. Hier kannst du deine Daten (Spiele etc.) in den dafür vorgesehenen Ordner ablegen.

### FTP

Mit einem FTP-Programm deiner Wahl kannst du eine SFTP-Verbindung zu deinem KNULLI-Gerät aufbauen. Dazu benötigst du den Hostnamen oder die IP-Adresse des Geräts. Stelle sicher, dass als Port `22` eingestellt ist. Der Benutzername lautet `root`, das Passwort wird dir als *Root password* im Bereich *Security* der *System settings* angezeigt.

### HTTP

!!! warning "Dieser Abschnitt ist noch in Bearbeitung. Es tut uns leid, wir arbeiten dran! :smile: Bis es soweit ist kannst du uns via [:simple-discord: Discord](https://discord.gg/HXPS3DAeeB) kontaktieren - vielleicht können wir dir dort helfen!"

### Nach der Übertragung

Wenn du deine Daten vollständig übertragen hast, solltest du auf deinem KNULLI-Gerät mit dem  ++"Start"++-Button das Hauptmenü öffnen und unter *Game settings* die Option *Update gamelists* wählen. KNULLI wird dann alle ROM-Ordner neu scannen und ggf. hinzugefügte Spiele identifizieren, damit du sie über EmulationStation starten kannst.

## Option 2: SD-Karte

Spiele können via SD-Karte hinzugefügt werden.

### Geräte mit nur einem SD-Karten-Slot

Wenn dein Gerät *keinen* internen Speicher und nur *einen* SD-Karten-Slot hat, musst du KNULLI auf deiner SD-Karte installieren. Auf der SD-Karte wird es dann eine Partition geben, in der deine Nutzerdaten abgelegt werden. Standardmäßig ist diese Partition in ext4 formatiert, einem Dateisystem, das Windows nicht lesen kann. Spiele direkt auf die SD-Karte zu laden ist in diesem Fall leider keine Option. Wenn du unbedingt direkt auf die SD-Karte zugreifen willst, kannst du die Partition allerdings umformatieren, wie im Abschnitt [Einzelnes Speichermedium](#einzelnes-speichermedium) beschrieben.

### Geräte mit zwei SD-Karten-Slots

!!! warning "Dieser Abschnitt ist noch in Bearbeitung. Es tut uns leid, wir arbeiten dran! :smile: Bis es soweit ist kannst du uns via [:simple-discord: Discord](https://discord.gg/HXPS3DAeeB) kontaktieren - vielleicht können wir dir dort helfen!"

### Geräte mit internem Speicher und einem SD-Karten-Slot

!!! warning "Dieser Abschnitt ist noch in Bearbeitung. Es tut uns leid, wir arbeiten dran! :smile: Bis es soweit ist kannst du uns via [:simple-discord: Discord](https://discord.gg/HXPS3DAeeB) kontaktieren - vielleicht können wir dir dort helfen!"

## Option 3: Externe USB-Speicher

!!! warning "Dieser Abschnitt ist noch in Bearbeitung. Es tut uns leid, wir arbeiten dran! :smile: Bis es soweit ist kannst du uns via [:simple-discord: Discord](https://discord.gg/HXPS3DAeeB) kontaktieren - vielleicht können wir dir dort helfen!"

## Option 4: Linux

Wenn du Zugriff auf einen Computer hast, der mit Linux betrieben ist, kannst du deine normale Speicherkarte auch dann lesen und bespielen, wenn sie in ext4 formatiert ist. Steck deine SD-Karte einfach in den Kartenleser deines Linux-Computers um direkten Zugriff auf die Speicherkarte zu erhalten.

## Speichermodi

KNULLI unterstützt sowohl die Benutzung von internem als auch externem Speicher (Micro-SD-Karten) für Spiele. Um Spiele auf das Gerät zu laden und so für KNULLI verfügbar zu machen, haben wir verschiedene Möglichkeiten geschaffen, abhängig davon, welches Dateisystem du benutzt. KNULLI in jedem Speichermodus, den KNULLI unterstützt, stellen wir ein Verzeichnis `roms` bereit, in dem du deine Spiele ablegen kannst. Alle Spiele, die im Ordner `roms` liegen, werden in KNULLI verfügbar sein. An anderen Orten sucht KNULLI *nicht* nach Spielen.

### Einzelnes Speichermedium

Nachdem Knulli auf einer SD-Karte oder einem internen Speicher installiert wurde, stellt es dort eine eigene Partition bereit, in der du deine Benutzerdaten ablegen kannst. Dazu gehören z.B. ROMs, BIOSe, aber auch Themes, Konfigurationsdateien oder Hintergundmusik für EmulationStation. Diese Partition wird standardmäßig mit dem Dateisystem ext4 formatiert, einem Dateisystem, das unter Windows nicht lesbar ist. Linux-Nutzer können die Partition auf der SD-Karte weiterhin lesen und beschreiben, Windows-Nutzer können allerdings auf anderen Wegen auf die Partition zugreifen.

!!! note "Die Partition für Nutzerdaten ist innerhalb von KNULLI als `/userdata` gemountet."

Es ist möglich, die Partition stattdessen mit dem Dateisystem exFAT zu formatieren, um die Partition über ein Kartenlesegerät mit Windows zu lesen und zu beschreiben. exFAT hat allerdings Nachteile bei der Performance und ist limitiert in der zulässigen Dateigröße. Manche Spiele, insbesondere einige Ports, lassen sich nicht ausführen, wenn die Ppartition mit exFAT formatiert ist. Um die Partition trotzdem mit exFAT zu formatieren, öffne das KNULLI-Hauptmenü mit dem  ++"Start"++-Button und wähle unter *System settings* und *Frontent developer options* die Option *Format a disk*.

### Mehrere Speichermedien

Für Geräte, die mehr als einen Speicher unterstützen (z.B. Geräte mit zwei SD-Karten-Slots oder Geräte mit internem Speicher und SD-Karten-Slot),  stellt KNULLI zwei verschiedene Möglichkeiten bereit.

### Getrennter Speicher (Standard)

Wenn die Option "Zusammengeführter Speicher" deaktiviert ist, oder das zweite/sekundäre Speichermedium in exFAT oder FAT32 formatiert ist, wird Knulli das erste/primäre Speichermedium für das Betriebssystem und alle weiteren Nutzerdaten nutzen und das zweite/sekundäre Speichermedium ausschließlich für Spiele. Wenn das sekundäre Speichermedium über KNULLI formatiert wird, wird automatisch das Verzeichnis `roms` angelegt, in dem die Spiele abgelegt werden können.

Um ein Speichermedium via KNULLI zu formatieren, öffne das Hauptmenü, in dem du den ++"Start"++-Button drückst, und wähle im KNULLI-Hauptmenü unter *System settings* und *Frontent developer options* die Option *Format a disk*.

!!! note "Die Partition des sekundären Speichers wird als `/userdata/games-external` gemountet, der Inhalt des Ordners `roms` (in KNULLI: `/userdata/games-external/roms`) wird dann von KNULLI als `/userdata/roms` verfügbar gemacht."

### Zusammengeführter Speicher

Wenn du ein sekundäres Speichermedium benutzt, das mit dem Linux-Dateisystem ext4 formatiert wurde, kann KNULLI den internen Gerätespeicher und die SD-Karte so zusammenführen, dass beide Speicher genutzt werden können, um Spiele darauf abzulegen. Für diesen Modus gibt es zwei Optionen, mit denen du festlegen kannst, welcher Speicher bevorzugt genutzt werden soll, der interne (Standard) oder der externe.

* Bevorzugt Intern
  * Dieser Modus wird alles, was in das Verzeichnis `/userdata/roms` geschrieben wird, im internen Speicher ablegen (`/userdata/games-internal/roms`). 
* Bevorzugt Extern
  * Dieser Modus wird alles, was in das Verzeichnis `/userdata/roms` geschrieben wird, auf der externen Micro-SD-Karte speichern (`/userdata/games-external/roms`).

!!! note "Zusammengeführter Speicher ist standardmäßig deaktiviert."

### Fehlerbehebung

* Wenn Spiele nicht in der grafischen Oberfläche EmulationStation angezeigt werden, kann die Ursache möglicherweise ein Konflikt im Dateisystem sein. Fehler dieser Art können beseitigt werden, in dem die Funktion `/usr/bin/cleanup_overlay` ausgeführt wird. Um dies zu tun muss allerdings zunächst eine SSH-Verbindung zum Gerät aufgebaut werden. Achtung: Das Gerät wird im Laufe des Clean-Ups neu gestartet!
* Wenn in `/userdata/roms` keine Unterordner für die verschiedenen Systeme angezeigt werden, kannst du mit dem  ++"Start"++-Button das Hauptmenü von EmulationStation öffnen und unter "System Settings" die Option "CREATE GAME DIRECTORIES" auswählen, um die entsprechenden Unterverzeichnisse anzulegen. Falls auch danach keine Verzeichnisse enthalten sind, solltest du prüfen, ob auf deinem sekundären Speichermedium ein Ordner `roms` vorliegt (und ihn ggf. selbst anlegen)"
