# :material-console: SSH

Als fortgeschrittener Nutzer möchtest du möglicherweise auf die Kommandozeile (oder Shell) deines KNULLI-Gerätes zugreifen, um Linux-Befehle direkt eingeben zu können. KNULLI stellt dafür einen SSH-Zugang bereit. Es gibt viele verschiedene SSH-Clients, die du nutzen kannst, um Zugriff auf die Shell deines KNULLI-Gerätes zu erhalten. Für Windows-Nutzer empfehlen wir [SmarTTY](https://sysprogs.com/SmarTTY) (das sogar Dateiübertragungen möglich macht) oder [PuTTY](https://www.putty.org).

Es ist allerdings auch möglich, den SSH-Client zu verwenden, der bereits in dein Betriebssystem integriert ist: Die meisten Linux-Distributionen und modernen Windows-Versionen enthalten bereits ein SSH-Programm, das auf der Kommandozeile ausgeführt werden kann.

Um auf dein KNULLI-Gerät via SSH zuzugreifen, musst du das Gerät zuerst mit deinem lokalen Netzwerk verbinden, wie im Abschnitt [Netzwerkverbindungen](./networking.md) beschrieben und anschließend eine SSH-Verbindung aufbauen, wie in den folgenden Abschnitten beschrieben.

## Benötigte Informationen

Um die SSH-Verbindung aufzubauen benötigst du die folgenden Informationen:

* Host: Entweder der Hostname deines KNULLI-Gerätes (der Standard-Hostname lautet `KNULLI`) oder die aktuelle IP-Adresse (drücke ++"Start"++ und wähle *Network settings* um deine aktuelle IP-Adresse einzusehen)
* Username: `root`
* Passwort: Dein aktuelles Root-Passwort (drücke ++"Start"++ und wähle *System settings* und dann *Security* um dein aktuelles Root-Passwort einzusehen, das Standardpasswort lautet `linux`)

## Option 1: Den integrierten SSH-Kommandozeilenbefehl verwenden

* Öffne ein Terminal bzw. eine Konsole auf deinem Computer.
     * Windows-Nutzer können sowohl das neue Windows Terminal als auch die klassische Eingabeaufforderung (CMD) oder die PowerShell nutzen.
     * Linux-Nutzer wissen normalerweise eh, wie man die Kommandozeile auf ihrem Gerät benutzt.
* Tippe
  ```
  ssh root@knulli
  ```
  und bestätigte mit ++"Enter"++. (Falls du den Hostnamen deines KNULLI-Gerätes geändert hast, musst du `knulli` mit deinem Hostnamen oder der IP-Adresse deines KNULLI-Geräts ersetzen.)
* Falls du nach Fingerabdrücken gefragt wirst, kannst du das einfach bestätigen.
* Sobald du danach gefragt wirst, gib dein Passwort ein und bestätige.
* Nachdem das Passwort überprüft wurde, solltest du mit deinem Gerät via SSH verbunden sein.
* Wenn du mit deinen SSH-Arbeiten fertig bist, kannst du die Verbindung trennen, indem du `exit` eintippst und bestätigst.

## Option 2: Ein eigenständiges SSH-Programm verwenden

Um eine SSH-Verbindung via SmarTTY aufzubauen, installiere das Programm, starte es und folge diesen Schritten:

<table>
	<tr>
		<td>
			<img src="/_inc/images/configure/ssh/smartty-new-connection-001.png">
			<p><strong>Schritt 1: </strong>Klick auf <em>New SSH connection...</em> am unteren linken Rand des Fensters.<p>
		</td>
		<td>
			<img src="/_inc/images/configure/ssh/smartty-new-connection-002.png">
	    	<p><strong>Schritt 2: </strong>Richte eine neue SSH-Verbindung mit den folgenden Einstellungen ein und klick auf <em>Connect</em>.</p>
			<table>
				<tr>
					<th>Host Name:</th>
					<td><code>KNULLI</code></td>
				</tr>
				<tr>
					<th>User Name:</th>
					<td><code>root</code></td>
				</tr>
				<tr>
					<th>Password:</th>
					<td><code>linux</code></td>
				</tr>
				<tr>
					<td colspan=2>
						<strong>Zusätzlich auswählen:</strong>
						<ul>
							<li>Setup public key authentication and don't ask for password again</li>
							<li>Save this connection to connections list</li>
						</ul>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td>
			<img src="/_inc/images/configure/ssh/smartty-new-connection-003.png">
			<p><strong>Schritt 3: </strong>Wenn du gefragt wirst, welche Art von Terminal du benutzen möchtest, wähle <em>Regular Terminal</em>.</p>
		</td>
		<td>
			<img src="/_inc/images/configure/ssh/smartty-new-connection-004.png">
			<p><strong>Schritt 4: </strong>Du hast erfolgreich eine SSH-Verbindung zu deinem KNULLI-Gerät hergestellt.</p>
		</td>
	</tr>
</table>
