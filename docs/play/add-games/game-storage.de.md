# :material-folder-home: Speicherort für Spiele

Bevor du anfängst, deine Spiele hinzuzufügen, solltest du dir die Zeit nehmen, um zu verstehen, wie die Datenstruktur von KNULLI funktioniert. Dies ist *besonders wichtig*, wenn du bereits Erfahrungen mit anderen CFWs gesammelt hast und deine Daten migrieren möchtest.

## Der `/userdata`-Ordner

Du kannst KNULLI sowohl mit **einer einzelnen SD-Karte** als auch mit **zwei getrennten SD-Karten** verwenden. Intern benutzt KNULLI einen Ordner namens `/userdata`, um **alle deine Daten** (Spiele, Screenshots, Bezels, Speicherstände, Konfigurationen, Themes etc.) darin abzulegen. Wenn du KNULLI mit einer einzelnen SD-Karte verwendest, wird der `/userdata`-Ordner **immer** auf die *SHARE*-Partition deiner **primären SD-Karte** zeigen. Wenn du ein Gerät mit mehr als einem SD-Karten-Slot hast und eine **zweite SD-Karte** verwenden möchtest, wird `/userdata` **stattdessen** auf die Partition der **zweiten SD-Karte** zeigen.

Dementsprechend ist es **nicht** möglich, **gleichzeitig** die *SHARE*-Partition von SD 1 und SD 2 zu verwenden. Es kann zu jedem Zeitpunkt immer nur eine der beiden SD-Karten als `/userdata` gemountet sein. Wenn du über die [SMB-Netzwerkübertragung](../network-transfer) auf dein Gerät zugreifst, wirst du immer nur **einen** *SHARE*-Ordner vorfinden, der immer auf deinen `/userdata`-Ordner zeigen wird. Dementsprechend wird dein interner Speicher niemals über das Netzwerk erreichbar sein, während du eine zweite SD-Karte als Speicher verwendest.

!!! info "Interner und externer Speicher"

    Du kannst zwischen erster und zweiter SD-Karte wechseln, in dem du den Schritten im Abschnitt [Eine zweite SD-Karte verwenden](../second-sd-card) folgst. Indem du zwischen internem und externem Speicher hin- und her schaltest, legst du für KNULLI fest, wohin `/userdata` zeigen soll.
!!! info "Wie "mounten" unter Linux funktioniert"

    Was viele Windows-Nutzer nicht wissen: Linux-Systeme addressieren Laufwerke **nicht** mit "Laufwerksbuchstaben", wie du es von deinem Windows-Computer kennst. Linux "mountet" die Laufwerke stattdessen als **Ordner**. Das Linux-Dateisystem kennt das Konzept von Laufwerksbuchstaben nicht, es besteht nur aus einem einzigen Dateibaum, an dessen Spitze das Symbol `/` steht - die "Wurzel" des Baumes. Jeder Ordner der existiert, existiert als **Unterordner** von `/`.

    Versuch dir vorzustellen, dass `/` ganz grob `C:\` auf deinem Windows-Computer entspricht. Versuch dir vorzustellen, dass ein USB-Stick, wenn du ihn an deinem Computer anschließt, nicht als neues Laufwerk `D:\` erscheint, sondern als ein Unterordner von `C:\`, z.B. `C:\media\my-usb-stick`.

    KNULLI ist ein Linux, dementsprechend nutzt es das Linux-Dateisystem. Damit es korrekt funktioniert, benötigt KNULLI einen Ordner namens `/userdata` (grob vergleichbar mit einem Ordner namens `C:\userdata`), in dem KNULLI all deine Dateien (Spiele, Themes, Spielstände, etc.) erwartet. Der Ordner `/userdata` ist **gleichzeitig** auch ein Mount-Ziel für **Laufwerke**. Wenn du zwischen **internem** und **externem** Speicher wechselst, legst du damit eigentlich nur fest, auf welches Laufwerk `/userdata` nach dem nächsten Neustart zeigen soll - **entweder** die interne *SHARE*-Partition **oder** SD 2.
    
    KNULLI erwartet **alle** deine Daten in `/userdata`, KNULLI **sucht nicht** nach Spielen, Themes oder irgendetwas anderem **außerhalb** der vordefinierten Ordnerstruktur. Aus diesem Grund ist es **nicht** möglich, beide SD-Karten **gleichzeitig** als Speicherort für Spiele zu verwenden.

## Vordefinierte Ordner für deine Dateien

IIm Verzeichnis `/userdata` befinden sich weitere Unterordner, in denen du Spiele und weitere Dateien ablegen kannst. Nach der ersten Installation wird KNULLI diese Ordner automatisch anlegen und befüllen. Die wichtigsten Ordner für dich sind folgende:

* `/userdata` (entspricht entweder deiner *SHARE*-Partition auf der primären SD-Karte oder der Hauptpartition auf der zweiten SD-Karte)
    * `/bios` ist der Ordner, in dem du BIOSe ablegen kannst.
    * `/cheats` ist der Ordner, in dem du Cheats ablegen kannst.
    * `/decorations` ist der Ordner, in dem du deine Bezels ablegen kannst.
    * `/music` ist der Ordner, in dem du MP3s und OGG-Dateien ablegen kannst, die in EmulationStation als Hintergrundmusik abgespielt werden können. (Die Songs sollten eine Samplerate von 44100Hz haben und eine Bitrate von maximal 256 kb/s.)
    * `/roms` ist der Ordner, in dem du deine Spiele ablegen kannst. Der Ordner enthält bereits diverse Unterordner für verschiedene Systeme. Leg deine Spiele einfach in die passenden Ordner der Systeme, für die das jeweilige Spiel entwickelt wurde.
        * `/snes` ist der Ordner, in dem du deine SNES-Spiele ablegen kannst.
        * `/gb` ist der Ordner, in dem du deine Gameboy-Spiele ablegen kannst.
        * `/ports` ist der Ordner, in dem du deine Ports (inklusive [PortMaster](../../../systems/portmaster) ablegen kannst.
        * ...
    * `/saves` ist der Ordner, in dem deine gespeicherten Spielstände abgelegt werden.
    * `/screenshots` ist der Ordner, in dem deine gespeicherten Screenshots abgelegt werden.
    * `/system` ist der Ordner, der deine Einstellungen enthält. Du solltest hier keine Änderungen vornehmen, wenn du nicht weißt, was du tust. Es kann aber nicht schaden, von diesem Ordner regelmäßige Backups anzufertigen.
    * `/theme-customizations` ist der Ordner, in dem du Anpassungen an deinen Themes vornehmen kannst.
    * `/themes` ist der Ordner, in dem du deine Themes ablegen kannst.

!!! info "KNULLI sucht ausschließlich im dafür vorgesehenen Ordner `roms` nach Spielen. Spiele, die außerhalb des dafür vorgesehenen Ordners abgelegt werden, werden von KNULLI nicht erkannt. Wenn du nicht sicher bist, welche Spiele in welchen Ordner gehören, empfehlen wir dringend, dass du einen Blick ins [Batocera Wiki](https://wiki.batocera.org/systems) wirfst!"

!!! info "KNULLI ist ein Linux-System. Anders als Windows unterscheiden Linux-Systeme zwischen *Groß- und Kleinschreibung* in Datei- und Ordnernamen. Du solltest deswegen darauf achten, dich an die erwartete Groß- und Kleinschreibung zu halten, wenn du deine Dateien migrierst."

!!! info "Für Details bzgl. der Dateien, die das jeweilige System benötigt, besuche bitte die entsprechenden Seiten im Abschnitt [Systeme](/../systems) in diesem Wiki."
