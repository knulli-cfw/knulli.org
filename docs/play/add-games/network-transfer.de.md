# :material-wifi-plus: Netzwerkübertragung

Netzwerkübertragung kann mit jedem Gerät genutzt werden, das mit dem Internet oder einem lokalen Netzwerk verbunden werden kann. (Das schließt nicht nur Geräte ein, die von sich aus W-LAN- oder kabelnetzwerkefähig sind, sondern auch Geräte, an die man einen externen USB-Dongle anschließen kann.)

Um Netzwerkübertragung zu nutzen, musst du als erstes die Netzwerkverbindungen deines Geräts einrichten. Im Abschnitt [Netzwerkverbindungen](../../../configure/networking) findest du Details dazu. Um Daten an dein Gerät via Netzwerk übertragen zu können, benötigst du

* den Hostnamen und/oder die IP-Adresse deines Geräts.
* das Root-Passwort, wenn erweiterte Sicherheitsmaßnahmen aktiviert sind, wie im Abschnitt [Netzwerkverbindungen](../../../configure/networking) beschrieben.

### Windows-Netzwerk (SMB)

KNULLI unterstützt, wie viele andere Betriebssysteme, das Windows-Netzwerkprotokoll SMB. Um Daten via SMB an dein Gerät zu übertragen, hast du verschiedene Möglichkeiten, je nachdem, welche Art von Computer du für die Übertragung nutzt.

Nachdem du dich erfolgreich eingeloggt hast, kannst du den Netzwerkordner `share` sehen. Dieser Ordner entspricht deinem aktuellen [`/userdata`-Ordner](../game-storage). Hier kannst du deine Daten (Spiele etc.) in den dafür vorgesehenen Ordnern ablegen.

#### Windows

Auf Windows-Computern ist SMB direkt in den *Windows-Explorer* integriert.

<table>
	<tr>
		<td>
			<img src="/_inc/images/play/add-games/001a-smb-find-in-network-section.png">
			<p><strong>Schritt 1a: </strong>Finde dein KNULLI-Gerät im Abschnitt <em>Netzwerk</em> in deinem <em>Windows Explorer</em>.</p>
		</td>
		<td>
			<img src="/_inc/images/play/add-games/001b-smb-find-by-hostname.png">
	    	<p><strong>Schritt 1b: </strong>Finde dein KNULLI-Gerät, indem du <code>\\KNULLI</code> in der Adressleiste des <em>Windows Explorers</em> eingibst.</p>
		</td>
		<td>
			<img src="/_inc/images/play/add-games/002-smb-open-share-folder.png">
			<p><strong>Schritt 2: </strong>Öffne den <code>share</code>-Ordner deines KNULLI-Geräts, um auf den Inhalt des <code>/userdata</code>-Ordners zuzugreifen.</p>
		</td>
		<td>
			<img src="/_inc/images/play/add-games/003-smb-find-system-in-roms-folder.png">
			<p><strong>Schritt 3: </strong>Öffne den <code>roms</code>-Ordner deines KNULLI-Geräts, um auf die Unterordner für die verschiedenen Systeme zuzugreifen (z.B. SNES).</p>
		</td>
	</tr>
</table>

Falls du in Zukunft öfter auf dein KNULLI-Gerät zugreifen möchtest, kannst du dem Gerät sogar einen Laufwerksbuchstaben zuweisen, damit es im Bereich *Dieser PC* sichtbar wird. Wenn du das tust, kannst du dort sogar nachsehen, wieviel freier Speicher auf deiner SD-Karte verfügbar ist.

<table>
	<tr>
		<td>
			<img src="/_inc/images/play/add-games/004-smb-map-network-drive.png">
			<p><strong>Schritt 1: </strong>Klick mit der rechten Maustaste auf den <code>share</code>-Ordner in deinem <em>Windows Explorer</em> und wähle <em>Netzlaufwerk verbinden...</em>.</p>
		</td>
		<td>
			<img src="/_inc/images/play/add-games/005-smb-map-network-drive.png">
	    	<p><strong>Schritt 2: </strong>Weise dem Netzlaufwerk einen Buchstaben zu und bestätige.</p>
		</td>
		<td>
			<img src="/_inc/images/play/add-games/006-smb-map-network-drive.png">
			<p><strong>Schritt 3: </strong>Du wirst deinen <code>share</code>-Ordner jetzt als Netzlaufwerk im Abschnitt <em>Dieser PC</em> im <em>Windows Explorer</em> finden.</p>
		</td>
	</tr>
</table>


!!! danger "Problemlösungen"

    - Der Gerätename im Windows-Explorer entspricht dem **hostname** deines Geräts. Wenn `KNULLI` nicht funktioniert, solltest du in den *Network Settings* deines Geräts nachsehen, welchen **hostname** dein Gerät eingetragen hat. Du kannst anstelle des **hostname** auch die **IP-Adresse** deines Gerätes verwenden, wenn du die Adresse direkt in die Adressleiste eintippst.
    - Du wirst möglicherweise nach Benutzername und Passwort gefragt, wenn die erweiterten Sicherheitseinstellungen aktiv sind.
        - Der Benutzername ist `root`, das Passwort wird dir als *Root password* im Bereich *Security* der *System settings* angezeigt.

#### macOS

- Öffne Finder und wähle *Gehe zu* und dann *Mit Server verbinden* aus dem Hauptmenü.
- In der Adressleiste, die jetzt erscheint, musst du `smb://[IP-ADRESSE]` eingeben (ersetze `[IP-ADRESSE]` mit deiner IP-Adresse).
- Du wirst möglicherweise nach Benutzername und Passwort gefragt, wenn die erweiterten Sicherheitseinstellungen aktiv sind.
    - Der Benutzername ist `root`, das Passwort wird dir als *Root password* im Bereich *Security* der *System settings* angezeigt.

### FTP

Mit einem FTP-Programm deiner Wahl kannst du eine SFTP-Verbindung zu deinem KNULLI-Gerät aufbauen. Dazu benötigst du den Hostnamen oder die IP-Adresse des Geräts. Stelle sicher, dass als Port `22` eingestellt ist. Der Benutzername lautet `root`, das Passwort wird dir als *Root password* im Bereich *Security* der *System settings* angezeigt.

### HTTP

!!! warning "Dieser Abschnitt ist noch in Bearbeitung. Es tut uns leid, wir arbeiten dran! :smile: Bis es soweit ist kannst du uns via [:simple-discord: Discord](https://discord.gg/HXPS3DAeeB) kontaktieren - vielleicht können wir dir dort helfen!"

### Nach der Übertragung

Wenn du deine Daten vollständig übertragen hast, solltest du auf deinem KNULLI-Gerät mit dem  ++"Start"++-Button das Hauptmenü öffnen und unter *Game settings* die Option *Update gamelists* wählen. KNULLI wird dann alle ROM-Ordner neu scannen und ggf. hinzugefügte Spiele identifizieren, damit du sie über EmulationStation starten kannst.
