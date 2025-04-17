# :material-fast-forward: Schnellstartanleitung

Moin! Willkommen bei KNULLI!

Mit dieser Schnellstartanleitung wollen wir dir helfen, KNULLI auf deinem Handheld in Betrieb zu nehmen. Falls du **zum ersten Mal** einen Retro-Gaming-Handheld einrichtest und Emulatoren und Custom Firwmwares (CFWs) für dich **Neuland** sind, wird diese Anleitung dich durch deine **ersten Schritte** führen. Falls du ein **erfahrener Nutzer** bist, wird diese Anleitung dir einen Überblick verschaffen, was KNULLI **grundlegend** von anderen Custom Firmwares **unterscheidet**, die du evtl. bereits benutzt hast.

## KNULLI installieren [![Latest](https://img.shields.io/github/release/knulli-cfw/distribution.svg?labelColor=111111&color=5998FF&label=Latest&style=flat#only-light)](https://github.com/knulli-cfw/distribution/releases/latest)[![Latest](https://img.shields.io/github/release/knulli-cfw/distribution.svg?labelColor=dddddd&color=5998FF&label=Latest&style=flat#only-dark)](https://github.com/knulli-cfw/distribution/releases/latest)

Zuerst solltest du die aktuellste KNULLI-Version in unserem [GitHub-Repository](https://github.com/knulli-cfw/distribution/releases/latest) identifizieren, die **exakt für dein Gerät** vorgesehen ist. Du findest eine Übersicht über alle verfügbaren Downloads in der Tabelle *Installation Download Package*. Lade die KNULLI-Version für dein Gerät herunter und "flash" sie auf eine SD-Karte. Du solltest **nicht** versuchen, irgendetwas nach der Installation manuell zu formatieren - KNULLI wird das für dich erledigen! Steck die SD-Karte einfach in dein Gerät und **entferne** alle weiteren SD-Karten aus den übrigen Slots deines Geräts, falls vorhanden. Jetzt kannst du dein KNULLI-Gerät einschalten und booten, um die Installation abzuschließen. (Der erste Bootvorgang kann relativ lange dauern, da KNULLI währenddessen deine Spielepartition expandieren und formatieren wird. Bleib geduldig!)

Falls du ausführlichere Hilfe bei der Installation von KNULLI benötigst, schau am Besten in den Abschnitt [Installation](../install).

## Erste Schritte

Deine ersten Schritte hängen teilweise davon ab, wie du dein KNULLI-Gerät benutzen möchtest.

### 1. Datenspeicher einrichten

KNULLI lässt sich hervorragend mit einer einzelnen SD-Karte betreiben. Wer KNULLI erstmal kennenlernen möchte, dem empfehlen wir, zum reinschnuppern erstmal mit einer einzelnen SD-Karte anzufangen. Langfristig **empfehlen wir aber definitiv** eine **2-Karten-Konfiguration** zu verwenden, falls dein Gerät über einen zweiten SD-Slot verfügt. Auf der **ersten Karte**  befindet sich dann **nur** das **Betriebssystem**. Alle Spiele, Themes, Speicherstände, etc. werden auf der **zweiten Karte** abgelegt.

Falls du dich für eine Zwei-SD-Karten-Konfiguration entscheiden solltest, beachte bitte, dass du **manuell** zwischen internem und externem Speicher umschalten musst, wenn du eine zweite SD-Karte verwenden möchtest. (Eine genauere Anleitung zum [Wechseln von SD-Karten](../add-games/second-sd-card) findest du im Abschnitt [Spiele hinzufügen](../add-games).)

 (Keine Sorge: Es ist auch später noch möglich, von einer 1-SD-Karte-Konfiguration zu einer 2-SD-Karten-Konfiguration zu wechseln, wie in der [Anleitung "Zu Dual-SD-Card-Setup wechseln"](../../guides/dual-sd-card-migration) beschrieben.

Es ist theoretisch möglich, eine bereits mit Daten befüllte SD-Karte als zweite SD-Karte in einer 2-Karten-Konfiguration zu verwenden. Falls du das versuchen möchtest, solltest du sicherstellen, dass die **Ordnerstruktur** auf deiner SD-Karte **exakt** so ist wie im Abschnitt [Speicherort für Spiele](../add-games/game-storage) beschrieben!

Stell sicher, dass du eine **Entscheidung gefällt hast**, wie du deinen Datenspeicher einrichten möchtest, und dass du den **Speicher entsprechend vorbereitet hast** bevor du mit dem nächsten Schritt weitermachst.

!!! info "Du kannst auch das ext4-Dateisystem benutzen"

    Falls du das ext4-Dateisystem bevorzugst, z.B. weil du dich bereits gut mit Linux auskennst und dein Gerät stark customizen möchtest und dafür z.B. symbolische Links benötigst, kannst du den eingebauten Formatierer verwenden, um deinen Speicher mit ext4 zu formatieren. Du findest mehr Informationen dazu im Abschnitt [Formatieren](../add-games/formatting).

### 2. W-LAN einrichten

Drück ++"Start"++ um ins Hauptmenü zu gelangen und gehe zu *Network settings*, wo du deine W-LAN-Verbindung einrichten kannst. (Eine detailliertere Anleitung zur Einrichtung des W-LANs und zur Verbesserung der Sicherheit deines Gerätes findest du im Abschnitt [Netzwerkverbindungen](../../configure/networking).)

!!! danger "Problemlösungen"

    Falls du dein KNULLI-Gerät nicht mit deinem W-LAN verbinden kannst, solltest du prüfen, ob WPA2+WPA3-Verschlüsselung in deinem Router aktiviert ist und sie ggf. abschalten und stattdessen WPA1+WPA2 verwenden.

    Alternativ kannst du auch den neuen **experimentellen Hintergrunddienst** ausprobieren, der es u.U. ermöglicht, das Gerät mit einem via WPA2+WPA3 geschützen W-LAN zu verbinden. Drück ++"Start"++ um das Hauptmenü zu öffnen, gehe zu *System Settings*, dann *Services* und aktivierte dort *WIRELESS_HYBRID_FIX*. Bitte behalte im Hinterkopf, dass es sich bei diesem Hintergrunddienst um ein **experimentelles** Feature handelt.

### 3. Spiele und BIOSe hinzufügen

Du kannst jetzt anfangen, deine Spiele hinzuzufügen. Wir empfehlen, dass du zunächst einen Blick auf den Abschnitt [Speicherort für Spiele](../add-games/game-storage) wirfst, um die Ordnerstruktur von KNULLI kennenzulernen.

Du kannst jetzt einfach dein KNULLI-Gerät herunterfahren, die SD-Karte entnehmen, die du als Speicherort für Spiele vorgesehen hast, und die Karte in deinen Computer stecken. Dort kannst du alle deine Spielen direkt auf die SD-Karte kopieren.

Falls du eine drahtlose Lösung bevorzugst oder dich dafür entschieden hast, das **ext4**-Dateisystem zu nutzen, kannst du stattdessen die **Netzwerkübertragung** nutzen: Unter Windows kannst du im Normalfall einfach den **Windows Explorer** öffnen und dein Gerät unter dem Namen **KNULLI** im Abschnitt **Netzwerk** finden. Falls das Gerät dort nicht auftaucht, kannst du einfach `\\KNULLI` in die Adresszeile deines Windows Explorers eingeben. Unter **macOS** findest du dein Gerät, in dem du im *Finder* *Gehe zu* öffnest und dort *Mit Server verbinden* auswählst. Hier kannst du `smb://KNULLI` in der Adressleiste eintippen, um auf dein Gerät zuzugreifen. (Falls du den Hostnamen deines Gerätes geändert hast, musst du stattdessen den geänderten Hostnamen deines Gerätes verwenden.)

<table>
	<tr>
		<td>
			<img src="/_inc/images/play/add-games/001a-smb-find-in-network-section.png">
			<p><strong>Schritt 1a: </strong>Wähle dein KNULLI-Gerät im Abschnitt <em>Netzwerk</em> deines <em>Windows Explorers</em>.</p>
		</td>
		<td>
			<img src="/_inc/images/play/add-games/001b-smb-find-by-hostname.png">
	    	<p><strong>Schritt 1b: </strong>Greif auf dein KNULLI-Gerät zu, in dem du <code>\\KNULLI</code> in der Adressleiste dines <em>Windows Explorers</em>.</p>
		</td>
		<td>
			<img src="/_inc/images/play/add-games/002-smb-open-share-folder.png">
			<p><strong>Schritt 2: </strong>Öffne den Ordner <code>share</code> auf deinem KNULLI-Gerät, um den Inhalt des <code>/userdata</code>-Ordners anzuzeigen.</p>
		</td>
		<td>
			<img src="/_inc/images/play/add-games/003-smb-find-system-in-roms-folder.png">
			<p><strong>Schritt 3: </strong>Öffne den Ordner <code>roms</code> um zu den Unterverzeichnissen für die jeweiligen Systeme zu gelangen (z.B. SNES).</p>
		</td>
	</tr>
</table>

In jedem Fall kannst du bequem per Drag-and-Drop deine Spiele und BIOS-Dateien von deiner Festplatte in die entsprechenden Ordner deines KNULLI-Gerätes kopieren. Eine umfangreichere Anleitung und ein paar weitere alternative Möglichkeiten findest du im Abschnitt [Spiele hinzufügen](../add-games).

### 4. PortMaster installieren (optional)

Wenn du dich für PortMaster-Spiele interessierst, ist jetzt ein guter Zeitpunkt um PortMaster zu installieren. Als erstes solltest du sicherstellen, dass du mit deinem W-LAN verbunden bist. Anschließend kannst du auf deinem KNULLI-Gerät in der Kategorie *Ports* das Script *Install.PortMaster* ausführen, um die Installation zu beginnn. Nach Abschluss der Installation wirst du *PortMaster* in der *Ports*-Kategorie finden. (Mehr Informationen rund um [PortMaster](../../systems/portmaster) findest du im entsprechenden Abschnitt des Wikis.)

!!! info "Fehlendes PortMaster-Installationsscript"

     Falls *Install.PortMaster* in deiner *Ports*-Kategorie fehlt, folge den Anweisungen im Abschnitt[PortMaster](../../systems/portmaster).

### 5. Medien und Metadaten scrapen (optional)

Nachdem du alle deine Spiele hinzugefügt und installiert hast, möchtest du möglicherweise **Artworks**, textuelle Beschreibungen und andere **Metadaten** **hinzufügen**. KNULLI bringt dafür einen **Scraper** mit, der für dich verfügbare Medien und Metadaten herunterladen kann. Unser Scraper unterstützt **ScreenScraper**, **TheGamesDB** und **ArcadeDB** als Datenquellen. (Eine umfangreichere Anleitung zum [Scraping](../scraping) findest du im entsprechenden Abschnitt des Wikis.)

### 6. Retro Achievements einrichten (optional)

Wenn du Retro-Achievements sammeln möchtest, solltest du dich in dein Retro-Achievements-Konto einloggen. Drück ++"START"++, wähle *Game Settings* und gehe dort zu *RetroAchievement Settings* um deine Zugangsdaten einzugeben. Bitte denk daran, dass Retro-Achievements nur funktionieren während du mit dem Internet verbunden bist. (Weitere Informationen zum Thema Retro-Achievements findest du im Abschnitt [Achievements](../retro-achievements).)

## Spielen!!

Herzlichen Glückwunsch - dein Gerät ist bereit um zu spielen! Wie fühlt sich das an? Wenn dies deine erste Berührung mit einem Retro-Gaming-Handheld und/oder einer CFW ist, würden wir dir empfehlen, noch schnell die **Hotkey Shortcuts** zu lernen (du findest eine Liste im Abschnitt [Hotkey Shortcuts](../hotkey-shortcuts)) bevor du das erste Spiel startest. Abgesehen davon kannst du jetzt loslegen!

Wir wünschen dir viel Spaß beim Spielen mit KNULLI!

!!! info "Du bist nicht allein!"

     Falls du Probleme hast oder Hilfe brauchst: Keine Panik - du bist nicht allein! Vielleicht findest du eine Lösung für deine Probleme hier im Wiki, wirf z.B. mal einen Blick auf die [häufig gestellten Fragen](../../faq) oder besuch uns auf [:simple-discord: Discord](https://discord.gg/HXPS3DAeeB), wo wir gern versuchen werden, deine Fragen zu beantworten.
