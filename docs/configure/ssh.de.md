# :material-console: SSH

Als fortgeschrittener Nutzer möchtest du möglicherweise auf die Kommandozeile (oder Shell) deines KNULLI-Gerätes zugreifen, um Linux-Befehle direkt eingeben zu können. KNULLI stellt dafür einen SSH-Zugang bereit. Es gibt viele verschiedene SSH-Clients, die du nutzen kannst, um Zugriff auf die Shell deines KNULLI-Gerätes zu erhalten. Für Windows-Nutzer empfehlen wir [SmarTTY](https://sysprogs.com/SmarTTY) oder [PuTTY](https://www.putty.org).

Um mit deinem KNULLI-Gerät eine SSH-Verbindung aufzubauen, musst du das Gerät zuerst mit deinem lokalen Netzwerk verbinden, wie im Abschnitt [Netzwerkverbindungen](../networking) beschrieben.

Um die SSH-Verbindung aufzubauen benötigst du dann die folgenden Informationen:

* Host: Entweder der Hostname deines KNULLI-Gerätes (der Standard-Hostname lautet `KNULLI`) oder die aktuelle IP-Adresse (drücke ++"Start"++ und wähle *Network settings* um deine aktuelle IP-Adresse einzusehen)
* Username: `root`
* Passwort: Dein aktuelles Root-Passwort (drücke ++"Start"++ und wähle *System settings* und dann *Security* um dein aktuelles Root-Passwort einzusehen, das Standardpasswort lautet `linux`)

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
