# :material-micro-sd: Auf die SD-Karte zugreifen

!!! danger "Wichtig: Unbedingt lesen bevor du weitermachst!"

    Standardmäßig ist die *SHARE*-Partition deiner KNULLI-SD-Karte mit **ext4** formatiert, um Probleme mit PortMaster und exFAT zu vermeiden. (Du findest eine genauere Erklärung im Abschnitt [PortMaster und exFAT](../../../guides/portmaster-and-exfat).) Wenn du dich entschieden hast, beim ext4-Format zu bleiben, **empfehlen wir dringend**, dass du via [**Netzwerkübertragung**](../network-transfer) auf dein KNULLI-Gerät zugreifst..

Abhängig von der Formatierung deiner *SHARE*-Partition (oder deiner zweiten SD-Karte) hast du grundlegend unterschiedliche Möglichkeiten um direkt auf deine SD-Karte zuzugreifen. Dieser Abschnitt gibt dir einen Überblick über die möglichen Optionen.

Wenn du mit der Wahl deiner Formatierung unzufrieden bist, kannst du jederzeit den eingebauten KNULLI-Formatierer verwenden, um die Formatierung zu ändern. Bedenke dabei, dass **deine gesamten Nutzerdaten dabei verloren gehen werden**, wenn du dich dafür entscheidest neu zu formatieren. Wenn du mehr über Formatierung wissen möchtest, wird einen Blick in den Abschnitt [Formatieren](../formatting).

## Auf eine exFAT-formatierte SD-Karte zugreifen

exFAT ist das Standarddateisystem für SD-Karten und USB-Sticks. Windows, MacOS und Linux unterstützen exFAT von Haus aus. Steck die SD-Karte einfach in den SD-Kartenleser deines Computers (oder benutze einen externen Kartenleser) um auf deine SD-Karte zuzugreifen wie auf jede andere SD-Karte und jeden USB-Stick.

## Auf eine ext4-formatierte SD-Karte zugreifen

ext4 ist ein Linux-Dateisystem. Windows und MacOS können ext4 nicht interpretieren, sie können weder Daten von ext4-Laufwerken lesen, noch Daten auf ext4-Laufwerke schreiben. Direkter Zugriff auf ext4 ist von einem Windows- oder MacOS-Computer nur mit Drittanbieter-Software möglich.

### Option 1: Linux

Wenn du Zugriff auf einen Computer hast, der mit Linux betrieben ist, kannst du deine normale Speicherkarte auch dann lesen und bespielen, wenn sie in ext4 formatiert ist. Steck deine SD-Karte einfach in den Kartenleser deines Linux-Computers um direkten Zugriff auf die Speicherkarte zu erhalten.

!!! warning "Potentielle Probleme beim Direktzugriff via Linux"

    Einige Nutzer haben Probleme mit ihren SD-Karten gemeldet, nachdem sie via Linux darauf zugegriffen haben. Wir empfehlen daher, den direkten Zugriff via Linux zu vermeiden und stattdessen wenn möglich [**Netzwerkübertragung**](../network-transfer) zu verwenden.

### Option 2: Drittanbieter-Software

Es gibt Software von Drittanbietern, mit denen man auch unter Windows/macOS auf Linux-Partitionen zugreifen kann:

* Paragon EXTFS für Windows/macOS ist ein kostenpflichtiges Tool, das häufig empfohlen wird und ext2/3/4 unterstützt.
* DiskGenius für Windows ist ein Tool, von dem eher abgeraten wird, erfahrungsgemäß beschädigt das Tool häufiger Partitionen und ihren Dateninhalt.

!!! warning "Datenverlust"

    Der Einsatz von Drittanbieter-Software wird von uns generell **nicht** empfohlen. Wenn du dich damit auskennst, kannst du versuchen, mit diesem Lösungsansatz zu experimentieren. Du solltest dir aber im Klaren sein, dass du das Risiko eingehst, einen Datenverlust zu erleiden."
