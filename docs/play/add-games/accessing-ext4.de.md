# :material-micro-sd: Auf die SD-Karte zugreifen

!!! danger "Wichtig: Unbedingt lesen bevor du weitermachst!"

    Wir empfehlen **dringend**, dass du via [**Netzwerkübertragung**](../network-transfer) auf dein KNULLI-Gerät zugreifst. Bevor du versuchst, direkt auf deine SD-Karte zuzugreifen, solltest du sicherstellen, dass du die Warnung im Abschnitt [Spiele hinzufügen](..) gelesen und verstanden hast.

Wie im Abschnitt [Datenstruktur](../game-storage) beschrieben, ist die *SHARE*-Partition von KNULLI standardmäßig mit ext4 formatiert und daher unter Windows nicht lesbar. Wenn Netzwerkübertragung nicht möglich ist, gibt es allerdings weitere Lösungen, um direkt auf die Speicherkarte zuzugreifen.

## Option 1: Linux

Wenn du Zugriff auf einen Computer hast, der mit Linux betrieben ist, kannst du deine normale Speicherkarte auch dann lesen und bespielen, wenn sie in ext4 formatiert ist. Steck deine SD-Karte einfach in den Kartenleser deines Linux-Computers um direkten Zugriff auf die Speicherkarte zu erhalten.

## Option 2: Drittanbieter-Software

Es gibt Software von Drittanbietern, mit denen man auch unter Windows/macOS auf Linux-Partitionen zugreifen kann:

* Paragon EXTFS für Windows/macOS ist ein kostenpflichtiges Tool, das häufig empfohlen wird und ext2/3/4 unterstützt.
* DiskGenius für Windows ist ein Tool, von dem eher abgeraten wird, erfahrungsgemäß beschädigt das Tool häufiger Partitionen und ihren Dateninhalt.

!!! danger "Der Einsatz von Drittanbieter-Software wird von uns generell **nicht** empfohlen. Wenn du dich damit auskennst, kannst du versuchen, mit diesem Lösungsansatz zu experimentieren. Du solltest dir aber im Klaren sein, dass du das Risiko eingehst, einen Datenverlust zu erleiden."


#### Die Share-Partition mit exFAT formatieren

!!! danger "Important: Read this before you proceed!"

    Sei dir bewusst, dass **sehr viele** PortMaster-Spiele **not** oder nur **stark eingeschränkt** funktionieren werden, wenn du deine Speichermedien mit exFAT formatierst. Bitte lies die Warnung im Abschnitt [Spiele hinzufügen](..), bevor du mit dem Formatieren beginnst.

Es ist möglich, deine Speichermedien mit exFAT zu formatieren, um direkt über Windows/macOS darauf zuzugreifen. Du solltest nicht versuchen, die Speichermedien direkt aus Windows/macOS heraus zu formatieren. Folge stattdessen der Anleitung im Abschnitt [Formatieren](../formatting), um deine Speichermedien mit dem integrierten KNULLI-Formatierer zu formatieren.
