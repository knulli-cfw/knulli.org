# :material-fast-forward: Schnellstartanleitung

Moin! Willkommen bei KNULLI!

Mit dieser Schnellstartanleitung wollen wir dir helfen, KNULLI auf deinem Handheld in Betrieb zu nehmen. Falls du **zum ersten Mal** einen Retro-Gaming-Handheld einrichtest und Emulatoren und Custom Firwmwares (CFWs) für dich **Neuland** sind, wird diese Anleitung dich durch deine **ersten Schritte** führen. Falls du ein **erfahrener Nutzer** bist, wird diese Anleitung dir einen Überblick verschaffen, was KNULLI **grundlegend** von anderen Custom Firmwares **unterscheidet**, die du evtl. bereits benutzt hast.

!!! danger "Wichtig: Unbedingt lesen bevor du loslegst!"

    Im Gegensatz zu vielen anderen CFWs verwendet KNULLI standardmäßig das **ext4**-Dateisystem für deine Spiele, Speicherstände, Konfigurationen etc. Wir haben diese Entscheidung **bewusst** gefällt, damit du die beste Out-Of-The-Box-Erfahrung mit **PortMaster** haben kannst. Derzeit funktioniert PortMaster **nicht** vollumfänglich mit KNULLI, wenn die Spiele auf Windows/macOS-kompatiblen exFAT-Partitionen abgelegt sind. (Du findest mehr Details zu diesem Thema im Abschnitt [PortMaster](../../systems/portmaster).)
     
    Es ist möglich, auf die ext4-formatierten Partitionen/SD-Karten via **Linux** zuzugreifen. Allerdings ist es **nicht möglich**, von **Windows/macOS** direkt auf die Partitionen/SD-Karten zuzugreifen. Dementsprechend wird es dir nicht möglich sein, auf deine SD-Karte auf die gleiche Weise zuzugreifen, die du möglicherweise von anderen CFWs gewohnt bist. Um deine Dateien hinzuzufügen, empfehlen wir stattdessen die **Netzwerkübertragung**. Sobald du dein KNULLI-Gerät deinem W-LAN hinzugefügt hast (wie im Abschnitt [Netzwerkverbindungen](../../configure/networking) beschrieben), wird dein KNULLI-Gerät im Bereich **Netzwerk** in deinem **Windows Explorer** auftauchen, wo du bequem und einfach per Drag-and-Drop deine Dateien ablegen kannst. (Eine genauere Erklärung findest du im Abschnitt [Netzwerkübertragung](../add-games/network-transfer).)

    Uns ist klar, dass Netzwerkübertragung etwas langsamer ist, und damit die erste Einrichtung deines Gerätes etwas erschwert, gerade dann, wenn du den größten Teil deiner Spielebibliothek auf dein Gerät laden möchtest. Wir glauben allerdings auch, dass es den **Aufwand wert ist**. Die PortMaster-Bibliothek enthält circa **500 Spiele**, viele davon sind auf deinem Handheld **vollständig spielbar**, wenn du dich für ext4 entscheidest.
    
    Es gibt allerdings auch eine **opt-out**-Lösung. Wenn du dir absolut sicher bist, dass du keine PortMaster-Spiele spielen möchtest, kannst du **ganz einfach** mit dem Windows-kompatiblen **exFAT**-Dateisystem **neu formatieren**. (Eine Anleitung zum Formatieren findest du im Abschnitt [Formatieren](../add-games/formatting). Sei dir aber bitte bewusst, dass PortMaster **nicht** vollumfänglich funktionieren wird, wenn du dich dazu entscheidest, deinen Speicher mit exFAT zu formatieren!

## KNULLI installieren [![Latest](https://img.shields.io/github/release/knulli-cfw/distribution.svg?labelColor=111111&color=5998FF&label=Latest&style=flat#only-light)](https://github.com/knulli-cfw/distribution/releases/latest)[![Latest](https://img.shields.io/github/release/knulli-cfw/distribution.svg?labelColor=dddddd&color=5998FF&label=Latest&style=flat#only-dark)](https://github.com/knulli-cfw/distribution/releases/latest)

zuerst solltest du die aktuellste KNULLI-Version in unserem [GitHub-Repository](https://github.com/knulli-cfw/distribution/releases/latest) identifizieren, die **exakt für dein Gerät** vorgesehen ist. Du findest eine Übersicht über alle verfügbaren Downloads in der Tabelle *Installation Download Package*. Lade die KNULLI-Version für dein Gerät herunter und "flash" sie auf eine SD-Karte. Du solltest **nicht** versuchen, irgendetwas nach der Installation manuell zu formatieren - KNULLI wird das für dich erledigen! Steck die SD-Karte einfach in dein Gerät und **entferne** alle weiteren SD-Karten aus den übrigen Slots deines Geräts, falls vorhanden. Jetzt kannst du dein KNULLI-Gerät einschalten und booten, um die Installation abzuschließen. (Der erste Bootvorgang kann relativ lange dauern, da KNULLI währenddessen deine Spielepartition expandieren und formatieren wird. Bleib geduldig!)

Falls du ausführlichere Hilfe bei der Installation von KNULLI benötigst, schau am Besten in den Abschnitt [Installation](../install).

## Erste Schritte

Deine ersten Schritte hängen teilweise davon ab, wie du dein KNULLI-Gerät benutzen möchtest.

### 1. Datenspeicher einrichten

Den meisten Nutzern **empfehlen** wir, eine **eiznelne SD-Karte** mit der **Standardformatierung** zu verwenden.

Falls du allerdings eine andere Speicherkonfiguration nutzen möchtest, z.B. weil dein Gerät keine W-LAN-Verbindungen unterstützt, kannst du die folgende Tabelle nutzen, um herauszufinden, welche Konfiguration für dich am geeignetsten ist. Sei dir bewusst, dass du deinen Datenspeicher möglicherweise **neu formatieren** musst, bevor du ihn benutzen kannst. Benutze dazu bitte den **eingebauten KNULLI-Formatierer**. Außerdem solltest du beachten, dass du **manuell** zwischen internem und externem Speicher umschalten musst. (Eine genauere Anleitung zum [Wechseln von SD-Karten](../add-games/second-sd-card) und zum [Formatieren](../add-games/formatting) deines Datenspeichers findest du im Abschnitt [Spiele hinzufügen](../add-games).

Es ist theoretisch möglich, eine bereits mit Daten befüllte SD-Karte als zweite SD-Karte in einer 2-Karten-Konfiguration zu verwenden. Falls du das versuchen möchtest, solltest du sicherstellen, dass die **Ordnerstruktur** auf deiner SD-Karte exakt so ist wie im Abschnitt [Speicherort für Spiele](../add-games/game-storage) beschrieben.

!!! danger "Entscheide dich, wie du deine Spiele speichern möchtest"

    | SD-Karten     | Ich möchte PortMaster-Spiele spielen!                                                                                                 | Ich möchte von Windows ohne Netzwerkverbindung direkt auf meine SD-Karte zugreifen! (Ich akzeptiere, dass PortMaster *nicht* funktionieren wird.) |
    | ------------ | -------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------- |
    | 1            | *Du kannst loslegen!* :material-check:                                                                                           | *Du musst deinen* ***internen Speicher*** *mit* ***exFAT*** [***neu formatieren***](../add-games/formatting). |
    | 2            | *Du musst deinen* ***externen Speicher*** *mit* ***ext4*** [***neu formatieren***](../add-games/formatting) *(es sei denn er ist schon mit ext4 formatiert).*      | *Du musst deinen* ***externen Speicher*** *mit* ***exFAT*** [***neu formatieren***](../add-games/formatting) *(es sei denn er ist schon mit exFAT formatiert).* |

Stell sicher, dass du eine **Entscheidung gefällt hast**, wie du deinen Datenspeicher einrichten möchtest, und dass du den **Speicher entsprechend vorbereitet hast** bevor du mit dem nächsten Schritt weitermachst.

Sei dir bitte bewusst, dass PortMaster **nicht** vollumfänglich funktionieren wird, wenn du dich dafür entscheidest, deinen Datenspeicher mit **exFAT** zu formatieren.

### 2. W-LAN einrichten

Dieser Schritt ist **zwingend nötig** um deine Spiele hinzuzufügen, es sei denn, dass du dich dafür entschieden hast, deine SD-Karte mit exFAT zu formatieren. Drück ++"Start"++ um ins Hauptmenü zu gelangen und gehe zu *Network settings*, wo du deine W-LAN-Verbindung einrichten kannst. (Eine detailliertere Anleitung zur Einrichtung des W-LANs und zur Verbesserung der Sicherheit deines Gerätes findest du im Abschnitt [Netzwerkverbindungen](../../configure/networking).)

!!! danger "Problemlösungen"

    Falls du dein KNULLI-Gerät nicht mit deinem W-LAN verbinden kannst, solltest du prüfen, ob WPA3-Verschlüsselung in deinem Router aktiviert ist und sie ggf. abschalten und stattdessen WPA2 verwenden.

### 3. Spiele und BIOSe hinzufügen

Abhängig davon, wie du deinen Datenspeicher eingerichtet hast, kannst du jetzt anfangen, deine Spiele auf dein Gerät zu laden. Unter Windows kannst du im Normalfall einfach den **Windows Explorer** öffnen und dein Gerät unter dem Namen **KNULLI** im Abschnitt **Netzwerk** finden. Falls das Gerät dort nicht auftaucht, kannst du einfach `\\KNULLI` in die Adresszeile deines Windows Explorers eingeben. Unter **macOS** findest du dein Gerät, in dem du im *Finder* *Gehe zu* öffnest und dort *Mit Server verbinden* auswählst. Hier kannst du `smb://KNULLI` in der Adressleiste eintippen, um auf dein Gerät zuzugreifen. (Falls du den Hostnamen deines Gerätes geändert hast, musst du stattdessen den geänderten Hostnamen deines Gerätes verwenden.)

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

Als Alternative kannst du, falls dir ein Linux-Computer zur Verfügung steht, oder du deine SD-Karte mit exFAT formatiert hast, dein KNULLI-Gerät herunterfahren, die SD-Karte entnehmen und in deinen Computer stecken, um direkt darauf zuzugreifen.

In jedem Fall kannst du bequem per Drag-and-Drop deine Spiele und BIOS-Dateien von deiner Festplatte in die entsprechenden Ordner deines KNULLI-Gerätes kopieren. Eine umfangreichere Anleitung und ein paar weitere alternative Möglichkeiten findest du im Abschnitt [Spiele hinzufügen](../add-games).

### 4. PortMaster installieren (optional)

Falls du dich dafür entschieden hast, bei ext4 zu bleiben, kannst du jetzt PortMaster installieren. Als erstes solltest du sicherstellen, dass du mit deinem W-LAN verbunden bist. Anschließend kannst du auf deinem KNULLI-Gerät in der Kategorie *Ports* das Script *Install.PortMaster* ausführen, um die Installation zu beginnn. Nach Abschluss der Installation wirst du *PortMaster* in der *Ports*-Kategorie finden. (Mehr Informationen rund um [PortMaster](../../systems/portmaster) findest du im entsprechenden Abschnitt des Wikis.)

!!! info "Fehlendes PortMaster-Installationsscript"

     Falls *Install.PortMaster* in deiner *Ports*-Kategorie fehlt, folge den Anweisungen im Abschnitt[PortMaster](../../systems/portmaster).

### 5. Medien und Metadaten scrapen (optional)

Nachdem du alle deine Spiele hinzugefügt und installiert hast, möchtest du möglicherweise **Artworks**, textuelle Beschreibungen und andere **Metadaten** **hinzufügen**. KNULLI bringt dafür einen **Scraper** mit, der für dich verfügbare Medien und Metadaten herunterladen kann. Unser Scraper unterstützt **ScreenScraper**, **TheGamesDB** und **ArcadeDB** als Datenquellen. (Eine umfangreichere Anleitung zum [Scraping](../scraping) findest du im entsprechenden Abschnitt des Wikis.)

### 6. Retro Achievements einrichten (optional)

Wenn du Retro-Achievements sammeln möchtest, solltest du dich in dein Retro-Achievements-Konto einloggen. Drück ++"START"++, wähle *Game Settings* und gehe dort zu *RetroAchievement Settings* um deine Zugangsdaten einzugeben. Bitte denk daran, dass Retro-Achievements nur funktionieren während du mit dem Internet verbunden bist. (Weitere Informationen zum Thema Retro-Achievements findest du im Abschnitt [Achievements](../retro-achievements).)

## Spielen!!

Herzlichen Glückwunsch - dein Gerät ist bereit um zu spielen! Wie fühlt sich das an? Wenn dies deine erste Berührung mit einem Retro-Gaming-Handheld und/oder einer CFW ist, würden wir dir empfehlen, noch schnell die **Hotkey Shortcuts** zu lernen (du findest eine Liste im Abschnitt [Hotkey Shortcuts](../hotkey-shortcuts)) bevor du das erste Spiel startest. Abgesehen davon kannst du jetzt loslegen!

Wir hoffen, dass du viel Spaß hast beim Spielen mit KNULLI!

!!! info "Du bist nicht allein!"

     Falls du Probleme hast oder Hilfe brauchst: Keine Panik - du bist nicht allein! Vielleicht findest du eine Lösung für deine Probleme hier im Wiki, wirf z.B. mal einen Blick auf die [häufig gestellten Fragen](../../faq) oder besuch uns auf [:simple-discord: Discord](https://discord.gg/HXPS3DAeeB), wo wir gern versuchen werden, deine Fragen zu beantworten.
