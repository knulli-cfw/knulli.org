# :material-layers-plus: Eine zweite SD-Karte verwenden

Wenn du KNULLI auf einem Gerät installierst, das über zwei SD-Karten-Slots verfügt, kannst du den zweiten Slot für eine zweite SD-Karte nutzen, die dann anstelle der *SHARE*-Partition genutzt werden kann:

* Stelle sicher, dass die zweite SD-Karte mit ext4 oder exFAT formatiert ist. (Du musst sie nicht neu formatieren, wenn sie bereits mit ext4 oder exFAT formatiert ist.)
* Steck die zweite SD-Karte in den dafür vorgesehenen Slot während das Gerät ausgeschaltet ist.
* Boote KNULLI, öffne das Hauptmenü mit dem  ++"Start"++-Button und gehe  zu *System settings*.
* Im Abschnitt *Storage* kannst du das *Storage device* auswählen.
    * Stelle von *Internal* (der "interne" Speicher ist die *SHARE*-Partition deiner KNULLI-SD-Karte) auf den Namen deiner zweiten SD-Karte, z.B. *SHARE - 25.6G*.
* Reboote KNULLI, um die Änderungen wirksam zu machen, drücke dazu den ++"Start"++-Button und gehe im Hauptmenü zu *Quit* und wähle dort *Restart system*.
* Beim Neustart wird KNULLI auf deiner zweiten SD-Karte automatisch alle Ordner und Dateien anlegen, die du normalerweise im [`/userdata`-Ordner](../userdata-folder) bzw. auf der *SHARE*-Partition findest.
* Wenn die zweite SD-Karte mit exFAT formatiert ist, kannst du die Karte aus dem Slot nehmen, nachdem du das Gerät heruntergefahren hast, und über deinen Computer mit Daten füllen.

!!! info "Ältere Alpha-Versionen von KNULLI haben auf der zweiten SD-Karte einen Ordner namens `batocera` angelegt. In diesen Versionen hat der [`/userdata`-Ordner](../userdata-folder) noch auf den `batocera`-Ordner gezeigt. Um Kompatiblität mit aktuellen KNULLI-Releases sicherzustellen, kannst du einfach den gesamten Inhalt des `batocera`-Ordners auf die oberste Ebene deiner zweiten SD-Karte verschieben."
