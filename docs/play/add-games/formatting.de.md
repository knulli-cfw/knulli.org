# :material-folder-cog: Formatieren

!!! danger "Wichtig: Unbedingt lesen bevor du weitermachst!"

    Wir empfehlen **dringend**, dass du via [**Netzwerkübertragung**](../network-transfer) auf dein KNULLI-Gerät zugreifst und das Dateisystem **ext4** beibehältst. Bevor du dich dazu entscheidest, deine Speicherkarten zu formatieren, solltest du sicherstellen, dass du die Warnung im Abschnitt [Spiele hinzufügen](..) gelesen und verstanden hast.

## Bevor du formatierst

* Sei dir bewusst, dass formatieren impliziert, dass **alle Daten** auf dem formatierten Speicher **unwiderruflich gelöscht** werden.
* Stelle sicher, dass du den **richtigen Speicher** auswählst, insbeosndere wenn du eine **zweite SD-Karte verwendest**!
* **Vermeide** nach Möglichkeit, direkt von deinem Windows/macOS/Linux-Computer zu formatieren und benutze **stattdessen** den **integrierten KNULLI-Formatierer**!

## Der integrierte Formatierer

!!! danger "Probleme mit dem integrierten Formatierer"
    Einige Nutzer sind bei der Verwendung des integrierten Formatierers des KNULLI-Builds 05/30 auf Probleme gestoßen. Die Probleme **wurden mittlerweile behoben**. Falls einen KNULLI-build 05/30 verwendest und Probleme mit dem eingebauten Formatierer hast, musst du möglicherweise stattdessen auf das [formatieren mit Windows](#formatieren-mit-windows) zurückgreifen.

### Verfügbare Dateisysteme

Der integrierte KNULLI-Fomatierer bietet dir **drei** verschiedene Dateisysteme an. Allerdings werden nur **zwei** davon derzeit tatsächlich von KNULLI unterstützt:

* **:material-check: ext4** ist ein Linux-Dateisystem, auf das **nicht** via Windows/macOS **zugegriffen** werden kann. Allerdings unterstützt ext4 **große Swap-Dateien** sowie **symbolische Links**. Dementsprechend können die meisten PortMaster-Spiele **ohne Einschränkungen** auf ext4-formatierten Speichermedien gespielt werden.
* **:material-check: exFAT** ist ein Windows/macOS-kompatibles Dateisystem, das von den meisten CFWs, Smartphones etc. verwendet wird. Leider unterstützt exFAT weder **große Swap-Dateien** noch **symbolische Links**. Viele PortMaster-Spiele können daher **nicht** oder **nur stark eingeschränkt** auf exFAT-formatierten Speichermedien gespielt werden.
* **:material-cancel: BTRFS** ist ein Dateisystem, das derzeit **NICHT VON KNULLI UNTERSTÜTZT WIRD**.

### Formatieren

Der integrierte KNULLI-Formatierer kann verwendet werden, um sowohl den internen Datenspeicher der primären SD-Karte (**internal**) als auch die optionale zweite SD-Karte (**external**) zu formatieren.

Um deine Speichermedien mit dem Dateisystem deiner Wahl zu formatieren, solltest du das KNULLI-Hauptmenü öffnen, in dem du ++"Start"++ drückst. Dort wählst du zunächst *System Settings*, dann *Frontend Developer Options* und schließlich *Format a Disk*. Stelle sicher, dass du das richtige Speichermedium (*Device to Format*) und Dateisystem (*File System*) ausgewählt hast, bevor du mit *Format Now* die Formatierung auslöst. Die eigentliche Formatierung findet dann während des nächsten Bootvorganges statt, du solltest dein Gerät also neustarten, um die Formatierung abzuschließen.

!!! info "Nach dem Formatieren"

    Nach dem Formatieren richtet KNULLI für dich automatisch einen [`/userdata`-Ordner](../game-storage) an.

## Formatieren mit Windows

Formatieren mit Windows ist nur dann möglich, wenn du deine SD-Karte mit **exFAT** formatieren willst. Wie an vielen Stellen in diesem Wiki erklärt, ermöglicht exFAT zwar direkten Zugang zur SD-Karte via Windows, allerdings wird es dadurch unmöglich, die meisten [PortMaster](../../../systems/portmaster)-Spiele zu spielen.

Wenn du deine SD-Karte aus Windows heraus formatieren möchtest, empfehlen wir dir dringend, die Windows-**Datenträgerverwaltung** zu nutzen. In der Datenträgerverwaltung ist es einfacher, die **korrekte Partition** zu identifizieren. Du findest die Datenträgerverwaltung, in dem du das *Startmenü* öffnest und `datenträgerverwaltung` eintippst. Das Tool nennt sich im Startmenü *"Festplattenpartitionen erstellen und formatieren"*.

<table>
	<tr>
		<td width="50%">
			<img src="/_inc/images/play/formatting/001-formatting-after-flashing-not-yet-expanded.png">
			<p><strong>Schritt 1: </strong>Stelle sicher, dass deine Partitionen korrekt initialisiert und erweitert wurden, bevor du irgendetwas formatierst. Der Screenshot zeigt eine SD-Karte, deren Share-Partition <strong>noch nicht</strong> auf ihre volle Größe expandiert wurde. Du erkennst das u.A. an den großen Menge an nicht zugeordnetem Speicher. Um sicherzustellen, dass die Partition einmal korrekt initialisiert wurde, solltet du dein KNULLI-Gerät einmal von der SD-Karte booten, bevor du weitermachst.</p>
		</td>
		<td width="50%">
			<img src="/_inc/images/play/formatting/002-formatting-delete-volume.png">
	    	<p><strong>Schritt 2: </strong>Nachdem deine SD-Karte initialisiert wurde, identifiziere die größte, jetzt vollständig expandierte Partition, klick sie mit der rechten Maustaste an und wähle <em>Volume löschen...</em>.</p>
		</td>
	</tr>
	<tr>
		<td>
			<img src="/_inc/images/play/formatting/003-formatting-create-volume.png">
			<p><strong>Schritt 3: </strong>Klick den neuen, nicht zugeordneten Speicher mit der rechten Maustaste an und wähle <em>Neues einfaches Volume...</em>.</p>
		</td>
		<td>
			<img src="/_inc/images/play/formatting/004-formatting-create-volume-max-size.png">
			<p><strong>Schritt 4: </strong>Stelle sicher, dass du den maximalen Speicherplatz für dein neues Volume verwendest.</p>
		</td>
	</tr>
	<tr>
		<td>
			<img src="/_inc/images/play/formatting/005-formatting-create-volume-assign-drive-letter.png">
			<p><strong>Schritt 5: </strong>Weise deinem neuen Volume einen Laufwerksbuchstaben zu. (Du kannst einen beliebigen Laufwerksbuchstaben auswählen, wir empfehlen, einfach den Buchstaben zu nutzen, denn Windows automatisch vorschlägt.)</p>
		</td>
		<td>
			<img src="/_inc/images/play/formatting/006-formatting-create-volume-format-to-exfat.png">
			<p><strong>Schritt 6: </strong>Stelle sicher, dass du das Laufwerk mit dem Dateisystem <strong>exFAT</strong>, Zuordnungseinheit <strong>Standard</strong>, und Volumebezeichnung <code>share</code> formatierst.</p>
		</td>
	</tr>
	<tr>
		<td>
			<img src="/_inc/images/play/formatting/007-formatting-formatted-to-exfat.png">
			<p><strong>Schritt 7: </strong>Überprüfe, dass du jetzt eine <em>share</em>-Partition hast, die mit exFAT formatiert ist.</p>
		</td>
		<td></td>
	</tr>
</table>

!!! info "Nach dem Formatieren"

    Nach dem Formatieren solltest du die SD-Karte in dein Gerät stecken und KNULLI starten. Während des Bootvorgangs richtet KNULLI für dich automatisch einen [`/userdata`-Ordner](../game-storage) an.
