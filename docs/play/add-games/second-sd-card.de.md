# :material-micro-sd: Eine zweite SD-Karte verwenden

!!! danger "Important:  Read this before you proceed!"

    Wenn du eine zweite SD-Karte verwenden willst, empfehlen wir dir **dringend**, sie mit **ext4** zu formatieren und via [**Netzwerkübertragung**](../network-transfer) darauf zuzugreifen. Bevor du anfängst, eine mit exFAT formatierte zweite SD-Karte einzurichten, lies bitte die Warnung im Abschnitt [Spiele hinzufügen](..).

Wenn du KNULLI auf einem Gerät installierst, das über zwei SD-Karten-Slots verfügt, kannst du den zweiten Slot für eine zweite SD-Karte nutzen, die dann **anstelle** der *SHARE*-Partition der ersten SD-Karte genutzt werden kann.

* Schalte dein KNULLI-Gerät aus (falls es noch eingeschaltet ist).
* Steck die zweite SD-Karte in den dafür vorgesehenen Slot während das Gerät ausgeschaltet ist.
* Boote KNULLI, öffne das Hauptmenü mit dem  ++"Start"++-Button und gehe  zu *System settings*.
* Im Abschnitt *Storage* kannst du das *Storage device* auswählen.
    * Stelle von *Internal* (der "interne" Speicher ist die *SHARE*-Partition deiner KNULLI-SD-Karte) auf den Namen deiner zweiten SD-Karte, z.B. *SHARE - 25.6G*.
* Reboote KNULLI, um die Änderungen wirksam zu machen, drücke dazu den ++"Start"++-Button und gehe im Hauptmenü zu *Quit* und wähle dort *Restart system*.
* Falls deine zweite SD-Karte **noch nicht** mit dem Dateisystem deiner Wahl formatiert ist
    * folge der Anleitung im Abschnitt [Formatieren](../formatting) um die SD-Karte mit dem **integrierten KNULLI-Formatierer** zu formatieren.
    * stelle sicher, dass du das Gerät noch einmal neustartest, um die Formatierung fertigzustellen.

* Beim Neustart wird KNULLI auf deiner zweiten SD-Karte automatisch alle benötigten Ordner und Dateien anlegen, die du normalerweise im [`/userdata`-Ordner](../game-storage) bzw. auf der *SHARE*-Partition findest.
* Falls du deine zweite SD-Karte mit exFAT formatiert hast, kannst du die Karte aus dem Slot nehmen, nachdem du das Gerät heruntergefahren hast, und über deinen Computer mit Daten füllen.

!!! info "Der `batocera`-Ordner"

    Ältere Alpha-Versionen von KNULLI haben auf der zweiten SD-Karte einen Ordner namens `batocera` angelegt. In diesen Versionen hat der [`/userdata`-Ordner](../game-storage) noch auf den `batocera`-Ordner gezeigt. Um Kompatiblität mit aktuellen KNULLI-Releases sicherzustellen, kannst du einfach den gesamten Inhalt des `batocera`-Ordners auf die oberste Ebene deiner zweiten SD-Karte verschieben."
