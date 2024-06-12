# :material-micro-sd: Auf die SD-Karte zugreifen

!!! danger "Wichtig: Unbedingt lesen bevor du weitermachst!"

    Wir empfehlen **dringend**, dass du via [**Netzwerkübertragung**](../network-transfer) auf dein KNULLI-Gerät zugreifst. Bevor du versuchst, direkt auf deine SD-Karte zuzugreifen, solltest du sicherstellen, dass du die Warnung im Abschnitt [Spiele hinzufügen](..) gelesen und verstanden hast.

Spiele können via SD-Karte hinzugefügt werden.

### Geräte mit nur einer SD-Karte

Wie im Abschnitt [Datenstruktur](../game-storage) beschrieben, ist die *SHARE*-Partition von KNULLI standardmäßig mit ext4 formatiert und daher unter Windows nicht lesbar. Wenn Netzwerkübertragung nicht möglich ist und du keinen Linux-Computer zur Verfügung hast, gibt es allerdings Lösungen, um doch direkt mit Windows auf die Speicherkarte zuzugreifen.

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

Wenn dein Gerät über einen Slot für eine zweite SD-Karte verfügt, kannst du einfach eine zweite SD-Karte an deinem Computer mit exFAT formatieren. Anschließend kannst du sie in KNULLI einrichten wie im Abschnitt [Eine zweite SD-Karte verwenden](../second-sd-card) beschrieben.

## Option 3: Linux

Wenn du Zugriff auf einen Computer hast, der mit Linux betrieben ist, kannst du deine normale Speicherkarte auch dann lesen und bespielen, wenn sie in ext4 formatiert ist. Steck deine SD-Karte einfach in den Kartenleser deines Linux-Computers um direkten Zugriff auf die Speicherkarte zu erhalten.
