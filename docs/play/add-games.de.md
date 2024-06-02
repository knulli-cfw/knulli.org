# :material-layers-plus: Spiele zu KNULLI hinzufügen

!!! info "Anders als viele andere CFWs formattiert KNULLI die *SHARE*-Partition standardmäßig mit ext4. Das Dateisystem ext4 ist unter Windows nicht lesbar, d.h. du wirst deine Spiele möglicherweise nicht auf die gleiche Weise hinzufügen können, wie du es von anderen CFWs gewohnt bist. Der Grund dafür ist, dass einige Spiele aus der [PortMaster](../../systems/portmaster)-Bibliothek auf das ext4-Dateisystem angewiesen sind, da sie symbolische Links und große Swap-Dateien einsetzen, die von Windows-Dateisystemen nicht unterstützt werden. Es ist möglich, die Partition nach dem ersten Bootvorgang stattdessen [mit exFAT zu formatieren](#die-share-partition-mit-exfat-formatieren). Du solltest dir allerdings darüber im Klaren sein, dass einige PortMaster-Spiele dann nicht mehr funktionieren werden."

Es gibt verschiedene Möglichkeiten, um Spiele auf dein KNULLI-Gerät zu laden. Welche Möglichkeiten für dich geeignet sind, hängt davon ab, welche Funktionen auf deinem Gerät zur Verfügung stehen. Wenn dein Gerät beispielsweise keine geeignete Hardware hat, um einem Netzwerk beizutreten, kannst du natürlich keine Daten via Netzwerk übertragen. Außerdem spielt es natürlich eine Rolle, welches Gerät dir als Datenquelle zur Verfügung steht.

## Datenstruktur

Bevor du anfängst, deine Spiele hinzuzufügen, solltest du dir die Zeit nehmen, um zu verstehen, wie die Datenstruktur von KNULLI funktioniert. Dies ist *besonders wichtig*, wenn du bereits Erfahrungen mit anderen CFWs gesammelt hast und deine Daten migrieren möchtest.

### Der `/userdata`-Ordner.

Du kannst KNULLI sowohl mit einer einzelnen SD-Karte als auch mit zwei getrennten SD-Karten verwenden. Intern benutzt KNULLI einen Ordner namens `/userdata`, um alle deine Daten (Spiele, Screenshots, Bezels, Speicherstände, Konfigurationen, Themes etc.) darin abzulegen. Wenn du KNULLI mit einer einzelnen SD-Karte verwendest, wird der `/userdata`-Ordner immer auf die *SHARE*-Partition deiner primären SD-Karte zeigen. Wenn du ein Gerät mit mehr als einem SD-Karten-Slot hast und eine zweite SD-Karte verwenden möchtest, wird `/userdata` **stattdessen** auf die Partition der zweiten SD-Karte zeigen.

!!! info "Du kannst zwischen einzelner und zweiter SD-Karte wechseln, in dem du den Schritten im Abschnitt [Eine zweite SD-Karte verwenden](#eine-zweite-sd-karte-verwenden) folgst. In dem du zwischen internem und externem Speicher hin- und her schaltest, legst du für KNULLI fest, wohin `/userdata` zeigen soll."

Im Verzeichnis `/userdata` befinden sich weitere Unterordner, in denen du Spiele und weitere Dateien ablegen kannst. Nach der ersten Installation wird KNULLI diese Ordner automatisch anlegen und befüllen. Die wichtigsten Ordner für dich sind folgende:

* `/userdata` (entspricht entweder deiner *SHARE*-Partition auf der primären SD-Karte oder der Hauptpartition auf der zweiten SD-Karte)
    * `/bios` ist der Ordner, in dem du BIOSe ablegen kannst.
    * `/cheats` ist der Ordner, in dem du Cheats ablegen kannst.
    * `/decorations` ist der Ordner, in dem du deine Bezels ablegen kannst.
    * `/music` ist der Ordner, in dem du MP3s und OGG-Dateien ablegen kannst, die in EmulationStation als Hintergrundmusik abgespielt werden können. (Die Songs sollten eine Samplerate von 44100Hz haben und eine Bitrate von maximal 256 kb/s.)
    * `/roms` ist der Ordner, in dem du deine Spiele ablegen kannst. Der Ordner enthält bereits diverse Unterordner für verschiedene Systeme. Leg deine Spiele einfach in die passenden Ordner der Systeme, für die das jeweilige Spiel entwickelt wurde.
        * `/snes` ist der Ordner, in dem du deine SNES-Spiele ablegen kannst.
        * `/gb` ist der Ordner, in dem du deine Gameboy-Spiele ablegen kannst.
        * `/ports` ist der Ordner, in dem du deine Ports (inklusive [PortMaster](../../systems/portmaster) ablegen kannst.
        * ...
    * `/saves` ist der Ordner, in dem deine gespeicherten Spielstände abgelegt werden.
    * `/screenshots` ist der Ordner, in dem deine gespeicherten Screenshots abgelegt werden.
    * `/system` ist der Ordner, der deine Einstellungen enthält. Du solltest hier keine Änderungen vornehmen, wenn du nicht weißt, was du tust. Es kann aber nicht schaden, von diesem Ordner regelmäßige Backups anzufertigen.
    * `/theme-customizations` ist der Ordner, in dem du Anpassungen an deinen Themes vornehmen kannst.
    * `/themes` ist der Ordner, in dem du deine Themes ablegen kannst.

!!! info "KNULLI sucht ausschließlich im dafür vorgesehenen Ordner `roms` nach Spielen. Spiele, die außerhalb des dafür vorgesehenen Ordners abgelegt werden, werden von KNULLI nicht erkannt."

!!! info "KNULLI ist ein Linux-System. Anders als Windows unterscheiden Linux-Systeme zwischen *Groß- und Kleinschreibung* in Datei- und Ordnernamen. Du solltest deswegen darauf achten, dich an die erwartete Groß- und Kleinschreibung zu halten, wenn du deine Dateien migrierst."

!!! info "Für Details bzgl. der Dateien, die das jeweilige System benötigt, besuche bitte die entsprechenden Seiten im Abschnitt [Systeme](/../systems) in diesem Wiki."

### Eine zweite SD-Karte verwenden

Wenn du KNULLI auf einem Gerät installierst, das über zwei SD-Karten-Slots verfügt, kannst du den zweiten Slot für eine zweite SD-Karte nutzen, die dann anstelle der *SHARE*-Partition genutzt werden kann:

* Stelle sicher, dass die zweite SD-Karte mit ext4 oder exFAT formatiert ist. (Du musst sie nicht neu formatieren, wenn sie bereits mit ext4 oder exFAT formatiert ist.)
* Steck die zweite SD-Karte in den dafür vorgesehenen Slot während das Gerät ausgeschaltet ist.
* Boote KNULLI, öffne das Hauptmenü mit dem  ++"Start"++-Button und gehe  zu *System settings*.
* Im Abschnitt *Storage* kannst du das *Storage device* auswählen.
    * Stelle von *Internal* (der "interne" Speicher ist die *SHARE*-Partition deiner KNULLI-SD-Karte) auf den Namen deiner zweiten SD-Karte, z.B. *SHARE - 25.6G*.
* Reboote KNULLI, um die Änderungen wirksam zu machen, drücke dazu den ++"Start"++-Button und gehe im Hauptmenü zu *Quit* und wähle dort *Restart system*.
* Beim Neustart wird KNULLI auf deiner zweiten SD-Karte automatisch alle Ordner und Dateien anlegen, die du normalerweise im [`/userdata`-Ordner](#der-userdata-ordner) bzw. auf der *SHARE*-Partition findest.
* Wenn die zweite SD-Karte mit exFAT formatiert ist, kannst du die Karte aus dem Slot nehmen, nachdem du das Gerät heruntergefahren hast, und über deinen Computer mit Daten füllen.

!!! info "Ältere Alpha-Versionen von KNULLI haben auf der zweiten SD-Karte einen Ordner namens `batocera` angelegt. In diesen Versionen hat der [`/userdata`-Ordner](#der-userdata-ordner) noch auf den `batocera`-Ordner gezeigt. Um Kompatiblität mit aktuellen KNULLI-Releases sicherzustellen, kannst du einfach den gesamten Inhalt des `batocera`-Ordners auf die oberste Ebene deiner zweiten SD-Karte verschieben."

## Option 1: Netzwerkübertragung

Netzwerkübertragung kann mit jedem Gerät genutzt werden, das mit dem Internet oder einem lokalen Netzwerk verbunden werden kann. (Das schließt nicht nur Geräte ein, die von sich aus W-LAN- oder kabelnetzwerkefähig sind, sondern auch Geräte, an die man einen externen USB-Dongle anschließen kann.)

Um Netzwerkübertragung zu nutzen, musst du als erstes die Netzwerkverbindungen deines Geräts einrichten. Im Abschnitt [Netzwerkverbindungen](../../configure/networking) findest du Details dazu. Um Daten an dein Gerät via Netzwerk übertragen zu können, benötigst du

* den Hostnamen und/oder die IP-Adresse deines Geräts.
* das Root-Passwort, wenn erweiterte Sicherheitsmaßnahmen aktiviert sind, wie im Abschnitt [Netzwerkverbindungen](../../configure/networking) beschrieben.

### Windows-Netzwerk (SMB)

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

Nachdem du dich erfolgreich eingeloggt hast, kannst du den Netzwerkordner `share` sehen. Dieser Ordner entspricht deinem aktuellen [`/userdata`-Ordner](#der-userdata-ordner). Hier kannst du deine Daten (Spiele etc.) in den dafür vorgesehenen Ordnern ablegen.

### FTP

Mit einem FTP-Programm deiner Wahl kannst du eine SFTP-Verbindung zu deinem KNULLI-Gerät aufbauen. Dazu benötigst du den Hostnamen oder die IP-Adresse des Geräts. Stelle sicher, dass als Port `22` eingestellt ist. Der Benutzername lautet `root`, das Passwort wird dir als *Root password* im Bereich *Security* der *System settings* angezeigt.

### HTTP

!!! warning "Dieser Abschnitt ist noch in Bearbeitung. Es tut uns leid, wir arbeiten dran! :smile: Bis es soweit ist kannst du uns via [:simple-discord: Discord](https://discord.gg/HXPS3DAeeB) kontaktieren - vielleicht können wir dir dort helfen!"

### Nach der Übertragung

Wenn du deine Daten vollständig übertragen hast, solltest du auf deinem KNULLI-Gerät mit dem  ++"Start"++-Button das Hauptmenü öffnen und unter *Game settings* die Option *Update gamelists* wählen. KNULLI wird dann alle ROM-Ordner neu scannen und ggf. hinzugefügte Spiele identifizieren, damit du sie über EmulationStation starten kannst.

## Option 2: SD-Karte

Spiele können via SD-Karte hinzugefügt werden.

### Geräte mit nur einer SD-Karte

Wie im Abschnitt [Datenstruktur](#datenstruktur) beschrieben, ist die *SHARE*-Partition von KNULLI standardmäßig mit ext4 formatiert und daher unter Windows nicht lesbar. Wenn Netzwerkübertragung nicht möglich ist und du keinen Linux-Computer zur Verfügung hast, gibt es allerdings Lösungen, um doch direkt mit Windows auf die Speicherkarte zuzugreifen.

#### Die Share-Partition mit exFAT formatieren

!!! warning "Bevor du die *SHARE*-Partition mit exFAT formatierst, solltest du dir bewusst machen, dass sich einige Spiele aus der  [PortMaster](../../systems/portmaster)-Bibliothek auf einem exFAT-Laufwerk nicht ausführen lassen. Einige Ports verwenden symbolische Verknüpfungen und sehr große Swap-Dateien, beides wird von exFAT nicht unterstützt."

Es ist möglich, die *SHARE*-Partition mit dem Dateisystem exFAT zu formatieren, um die Partition über ein Kartenlesegerät mit Windows lesen und beschreiben zu können. exFAT hat allerdings Nachteile bei der Performance und ist limitiert in der zulässigen Dateigröße. Manche Spiele, insbesondere einige Ports, lassen sich nicht ausführen, wenn die *SHARE*-Partition mit exFAT formatiert ist.

Um die Partition trotzdem mit exFAT zu formatieren, öffne das KNULLI-Hauptmenü mit dem  ++"Start"++-Button und wähle unter *System settings* und *Frontent developer options* die Option *Format a disk*. Dort kannst du auswählen, ob du die Partition mit ext4 oder exFAT formatieren möchtest.


#### Drittanbieter-Software

Es gibt Software von Drittanbietern, mit denen man auch unter Windows/MacOS auf Linux-Partitionen zugreifen kann:

* Paragon EXTFS für Windows/Mac ist ein kostenpflichtiges Tool, das häufig empfohlen wird und ext2/3/4 unterstützt.
* DiskGenius für Windows ist ein Tool, von dem eher abgeraten wird, erfahrungsgemäß beschädigt das Tool häufiger Partitionen und ihren Dateninhalt.

!!! danger "Der Einsatz von Drittanbieter-Software wird von uns generell **nicht** empfohlen. Wenn du dich damit auskennst, kannst du versuchen, mit diesem Lösungsansatz zu experimentieren. Du solltest dir aber im Klaren sein, dass du das Risiko eingehst, einen Datenverlust zu erleiden."

### Geräte mit einer zweiten SD-Karte

Wenn dein Gerät über einen Slot für eine zweite SD-Karte verfügt, kannst du einfach eine zweite SD-Karte an deinem Computer mit exFAT formatieren. Anschließend kannst du sie in KNULLI einrichten wie im Abschnitt [Eine zweite SD-Karte verwenden](#eine-zweite-sd-karte-verwenden) beschrieben.

## Option 3: Linux

Wenn du Zugriff auf einen Computer hast, der mit Linux betrieben ist, kannst du deine normale Speicherkarte auch dann lesen und bespielen, wenn sie in ext4 formatiert ist. Steck deine SD-Karte einfach in den Kartenleser deines Linux-Computers um direkten Zugriff auf die Speicherkarte zu erhalten.
