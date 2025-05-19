# :material-wifi: Netzwerkverbindungen

Viele Geräte, die von KNULLI unterstützt werden, sind in der Lage, sich mit dem Internet oder anderen lokalen Netzwerken zu verbinden. In den meisten Fällen geschieht dies über den eingebauten W-LAN-Adapter. Allerdings unterstützt KNULLI auch Netzwerkverbindungen über USB-Dongles.

## Unterstützte Netzwerkadapter

Einige von KNULLI unterstützte Geräte (z.B. Anbernic RG35XX Plus/H/SP, TrimUI Smart Pro) verfügen bereits über einen eingebauten Netzwerkadapter, den KNULLI vollständig unterstützt. Wenn dein Gerät einen eingebauten Netzwerkadapter hat, kannst du diesen Abschnitt überspringen und direkt dein [W-LAN einrichten](#w-lan-einrichten).

Falls dein Gerät keinen eingebauten Netzwerkadapter hat (z.B. Anbernic RG35XX 2024, Anbernic RG28XX), gibt es trotzdem eine Möglichkeit, um dein Gerät mit deinem W-LAN zu verbinden. KNULLI unterstützt nahezu alle USB-W-LAN-Dongles, die einen Chipsatz *RTL8192cu* oder *RTL8188eu/us* verwenden. Die KNULLI-Community empfiehlt insbesondere den **TP-Link TL-WN725N** Netzwekadapter.

Um deinen Netzwerkadapter in Betrieb zu nehmen

* steck zunächst den Netzwerkadapter in einen passenden USB-Port deines KNULLI-Geräts.
* drück ++"Start"++ und öffne *System Settings*. Von dort gelangst du zum Untermenü *Services*, wo du `ENABLE_WIFI` aktivieren kannst, **nachdem** du den USB-W-LAN-Dongle eingesteckt hast.
* folge den Anweisungen im Abschnitt [W-LAN einrichten](#w-lan-einrichten).

## W-LAN einrichten

!!! danger "Probleme mit WPA2+WPA3 auf Anbernic-Geräten"

    Einige Nutzer haben von Problemen berichtet, die entstanden sind, als sie versucht haben, ein **Anbernic-H700-Gerät** der **RG-XX-Serie** mit einem WPA2+WPA3-geschützten W-LAN zu verbinden. KNULLI unterstützt WPA2+WPA3 auf diesen Geräten derzeit nicht, wir empfehlen daher, die Netzwerkverschlüsselung zu lockern und, sofern möglich, zu WPA1+WPA2 zu wechseln.

    Seit KNULLI Firefly gibt es einen **experimentellen Hintergrunddienst** mit, der es u.U. ermöglicht, das Gerät dennoch mit einem via WPA2+WPA3 geschützen W-LAN zu verbinden. Falls du Probleme hast, dein Gerät mit deinem W-LAN zu verbinden, kannst du versuchen, den neuen Hintergunddienst zu aktivieren. Drück ++"Start"++ um das Hauptmenü zu öffnen, gehe zu *System Settings*, dann *Services* und aktivierte dort *WIRELESS_HYBRID_FIX*. Bitte behalte im Hinterkopf, dass es sich bei diesem Hintergrunddienst um ein **experimentelles** Feature handelt.


Wenn dein Gerät einen eingebauten W-LAN-Adapter hat, kannst du ihn direkt via KNULLI konfigurieren. Öffne das Hauptmenü, in dem du den ++"Start"++-Button drückst, gehe zu *Network settings* und konfiguriere dort deine W-LAN-Verbindung. Im unteren Abschnitt *Settings* kannst du W-LAN aktivieren (*Enable WIFI*) und dein W-LAN ahand seiner SSID auswählen. Anschließend kannst du den W-LAN-Schlüssel eingeben und das Menü schließen, um mit dem W-LAN zu verbinden.

Im Abschnitt darüber kannst du sehen, ob du gerade mit einem W-LAN verbunden bist. Außerdem siehst du deine aktuelle IP-Adresse und kannst das Netzwerksymbol ein- oder ausschalten.

### Weitere W-LANs (bis zu 3)

KNULLI hat ein paar Features die in der GUI nicht angezeigt werden, für technisch versierte Nutzer aber trotzdem zur Verfügung stehen. Via GUI ist es nur möglich, ein einziges W-LAN zur Zeit zu konfigurieren. Falls du allerdings häufiger unterwegs bist und verschiedene W-LANs nutzen möchtest, kannst du ein sekundäres und tertiäres W-LAN konfigurieren, indem du  die entsprechenden Änderungen in `batocera.conf` vornimmst. Du kannst auf die Datei auf dem selben Weg zugreifen, auf dem du deine Spiele hinzufügst, wie im Abschnitt [Add Games](../../play/add-games) beschrieben. Du kannst aber auch einen Kommandozeileneditor verwenden, wenn du die Datei via [SSH](../ssh) bearbeiten möchtest. Der Dateipfad lautet `/userdata/system/batocera.conf` oder `SHARE\system\batocera.conf`, je nachdem, aus welcher Perspektive du darauf zugreifen möchtest.  Nachdem du die Datei `batocera.conf` in deinem Editor geöffnet hast, musst du nur die folgenden Zeilen ändern:

```
## Secondary Wi-Fi
wifi2.ssid=wifiname2
wifi2.key=supergoodkey2

## Third Wi-Fi
wifi3.ssid=wifiname3
wifi3.key=supergoodkey3    
```

!!! warning "Passwortschutz"

    Standardmäßig fragt KNULLI nicht nach einem Passwort, wenn man übers Netzwerk auf dein Gerät zugreift. Das bedeutet, dass deine Nutzerdaten-Partition sofort und ohne Passwortschutz zugreifbar ist, sobald du dein Gerät mit einem W-LAN verbindest. In den eigenen vier Wänden mag das ein praktisches Feature sein. Wenn du dein Gerät allerdings mit einem W-LAN verbindest, das nicht unter deiner Kontrolle ist, gehst du damit ein Sicherheitsrisiko ein. Wir empfehlen dringend, die Maßnahmen für **zusätzliche Sicherheit** zu ergreifen.

### Zusätzliche Sicherheit

Öffne das Hauptmenü, in dem du den ++"Start"++-Button drückst. Dort kannst du *System settings* auswählen und von dort zum Bereich* Security* gelangen. Dort kannst du über den Schalter *Enforce security* erweiterte Sicherheitsmaßnahmen ein- oder ausschalten. Bitte beachte, dass du das Gerät neustarten musst, um die Änderungen wirksam zu machen.

Wenn du die Sicherheitsmaßnahmen eingeschaltet und das Gerät neu gestartet hast, kannst du in das *Security*-Menü zurückkehren. Unter dem Schalter *Enforce security* erscheint jetzt das aktuelle *root password*. Das Passwort ist zufallsgeneriert und ändert sich manchmal automatisch, wenn Updates installiert werden oder wichtige Einstellungen geändert wurden. Das ist aber kein Grund zur Sorge: Wenn du in dieses Menü zurückkehrst, kannst du jederzeit das aktuelle Root-Passwort einsehen.

Dieses Passwort, in Kombination mit dem Benutzernamen `root`, bildet die Zugangsdaten, mit denen auf dein Gerät via Netzwerk zugegriffen werden kann.

!!! warning "Fremde Netzwerke"

    Dir sollte bewusst sein, dass KNULLI für Retro-Gaming und niedrigschwelligen Netzwerkzugang entwickelt wurde. Die erweiterten Sicherheitsmaßnahmen stellen eine zusätzliche Hürde da, um deine Nutzerdaten vor ungewollten Zugriffen zu schützen. Du solltest das Gerät trotzdem nicht mit einem W-LAN verbinden, von dem du nicht sicher bist, dass es sicher ist!

### Hostname

Der standardmäßige Hostname des Geräts lautet `KNULLI`. Du kannst diesen Namen allerdings ändern, was besonders dann hilfreich sein kann, wenn du mehr als ein KNULLI-betriebenes Gerät in deinem Netzwerk hast. Innerhalb deines Netzwerks sollte der Hostname nach Möglichkeit eindeutig sein.

Um den Hostnamen zu ändern, drücke den  ++"Start"++-Button um das Hauptmenü zu öffnen, gehe dann zu *Network settings*, wo du den *Hostname* anpassen kannst.

Windows-User können den Hostnamen nutzen, um das Gerät in ihrem Netzwerk zu finden und darauf zuzugreifen. Wenn das Gerät eingeschaltet und mit deinem Netzwerk verbunden ist, solltest du es im Windows Explorer im Bereich "Netzwerk" finden. Alternativ kannst du darauf zugreifen, in dem du die Adresse in die Adresszeile des Windows Explorers eingibst.

Der Pfad
```
\\KNULLI\share
```

(wobei du`KNULLI` ggf. mit deinem eigenen Hostnamen ersetzen musst) führt direkt zum `/userdata`-Verzeichnis, wo deine ROMs, BIOSe etc. abgelegt sind. Mehr Informationen dazu findest du im Abschnitt [Spiele hinzufügen](../../play/add-games).

