# :material-micro-sd: Eine zweite SD-Karte verwenden

!!! danger "Wichtig: Unbedingt lesen!"

    Wenn du eine zweite SD-Karte verwenden möchtest, empfehlen wir dir **dringend**, den Abschnitt [PortMaster und exFAT](../../../guides/portmaster-and-exfat) zu lesen, bevor du mit der Einrichtung der zweiten SD-Karte beginnst. Der Abschnitt wird dir dabei helfen, dich für eine geeignete Formatierung zu entscheiden.

!!! info "Zu Dual-SD-Card-Setup wechseln"

    Dieser Abschnitt richtet sich an Nutzer, die gerade dabei sind KNULLI zum ersten Mal einzurichten. Falls du bereits eine laufende KNULLI-Installation auf einer einzelnen SD-Karte konfiguriert hast, solltest du lieber einen Blick auf unsere [Anleitung "Zu Dual-SD-Card-Setup wechseln"](../../../guides/dual-sd-card-migration) werfen.

Wenn du KNULLI auf einem Gerät installierst, das über zwei SD-Karten-Slots verfügt, kannst du den zweiten Slot für eine zweite SD-Karte nutzen, die dann **anstelle** der *SHARE*-Partition der ersten SD-Karte genutzt werden kann.

Dir sollte bewusst sein, dass es **nicht möglich** ist, **gleichzeitig** SD 1 **und** SD 2 als Speicherort für deine Spiele zu verwenden. Du kannst **entweder** SD 1 **oder** SD 2 verwenden - aber niemals beide gleichzeitig! Wenn du mehr darüber erfahren möchtest, wirf bitte einen Blick auf den Abschnitt [Speicherort für Spiele](../game-storage).

Trotzdem hat die Nutzung von zwei SD-Karten ein paar deutliche Vorteile:

* Im Fall eines **umfangreicheren Updates** kann es manchmal zwingend nötig sein, die ganze Custom Firmware erneut auf die SD-Karte zu flashen. Wenn du ein Dual-SD-Card-Setup nutzt, kannst du die neue KNULLI-Version einfach auf SD 1 flashen und deine Nutzerdaten auf SD 2 bleiben dabei komplett unberührt.
* Wenn du mehr als ein Gerät besitzt, ist es möglich, die gleiche Benutzerdaten-SD-Karten in **verschiedenen Geräten** zu benutzen.
* Du kannst möglicherweise etwas leichter **Backups erstellen**, weil du die zweite SD-Karte einfach duplizieren kannst, z.B. in dem du ein Image davon erstellst und auf eine andere SD-Karte flashst.

## Eine zweite SD-Karte einrichten

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
