# :material-folder-cog: Formatieren

!!! danger "Wichtig: Unbedingt lesen bevor du weitermachst!"

    Wir empfehlen **dringend**, dass du via [**Netzwerkübertragung**](../network-transfer) auf dein KNULLI-Gerät zugreifst und das Dateisystem **ext4** beibehältst. Bevor du dich dazu entscheidest, deine Speicherkarten zu formatieren, solltest du sicherstellen, dass du die Warnung im Abschnitt [Spiele hinzufügen](..) gelesen und verstanden hast.

## Bevor du formatierst

* Sei dir bewusst, dass formatieren impliziert, dass **alle Daten** auf dem formatierten Speicher **unwiderruflich gelöscht** werden.
* Stelle sicher, dass du den **richtigen Speicher** auswählst, insbeosndere wenn du eine **zweite SD-Karte verwendest**!
* **Vermeide** nach Möglichkeit, direkt von deinem Windows/macOS/Linux-Computer zu formatieren und benutze **stattdessen** den **integrierten KNULLI-Formatierer**!

## Verfügbare Dateisysteme

Der integrierte KNULLI-Fomatierer bietet dir **drei** verschiedene Dateisysteme an. Allerdings werden nur **zwei** davon derzeit tatsächlich von KNULLI unterstützt:

* **exFAT** ist ein Windows/macOS-kompatibles Dateisystem, das von den meisten CFWs, Smartphones etc. verwendet wird. Leider unterstützt exFAT weder **große Swap-Dateien** noch **symbolische Links**. Viele PortMaster-Spiele können daher **nicht** oder **nur stark eingeschränkt** auf exFAT-formatierten Speichermedien gespielt werden.
* **ext4** ist ein Linux-Dateisystem, auf das **nicht** via Windows/macOS **zugegriffen** werden kann. Allerdings unterstützt ext4 **große Swap-Dateien** sowie **symbolische Links**. Dementsprechend können die meisten PortMaster-Spiele **ohne Einschränkungen** auf ext4-formatierten Speichermedien gespielt werden.
* **BTRFS** ist ein Dateisystem, das derzeit **NICHT VON KNULLI UNTERSTÜTZT WIRD**.

## Formatting

Der integrierte KNULLI-Formatierer kann verwendet werden, um sowohl den internen Datenspeicher der primären SD-Karte (**internal**) als auch die optionale zweite SD-Karte (**external**) zu formatieren.

Um deine Speichermedien mit dem Dateisystem deiner Wahl zu formatieren, solltest du das KNULLI-Hauptmenü öffnen, in dem du ++"Start"++ drückst. Dort wählst du zunächst *System Settings*, dann *Frontend Developer Options* und schließlich *Format a Disk*. Stelle sicher, dass du das richtige Speichermedium (*Device to Format*) und Dateisystem (*File System*) ausgewählt hast, bevor du mit *Format Now* die Formatierung auslöst. Die eigentliche Formatierung findet dann während des nächsten Bootvorganges statt, du solltest dein Gerät also neustarten, um die Formatierung abzuschließen.
