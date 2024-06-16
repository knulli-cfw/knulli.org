# :material-wifi: Netzwerkverbindungen

Viele Geräte, die von KNULLI unterstützt werden, sind in der Lage, sich mit dem Internet oder anderen lokalen Netzwerken zu verbinden. In den meisten Fällen geschieht dies über den eingebauten W-LAN-Adapter. Allerdings unterstützt KNULLI auch Netzwerkverbindungen über USB-Dongles.

## W-LAN

!!! danger "WPA3-Probleme"

    Einige Nutzer haben von Problemen berichtet, die entstanden sind, als sie ihr KNULLI-Gerät mit einem WPA3-geschützten W-LAN verbinden wollten. Falls du Probleme hast, mit deinem W-LAN zu verbinden, stelle sicher, dass es mit WPA2 und **nicht** mit WPA3 geschützt ist.

Wenn dein Gerät einen eingebauten W-LAN-Adapter hat, kannst du ihn direkt via KNULLI konfigurieren. Öffne das Hauptmenü, in dem du den ++"Start"++-Button drückst, gehe zu *Network settings* und konfiguriere dort deine W-LAN-Verbindung. Im unteren Abschnitt *Settings* kannst du W-LAN aktivieren (*Enable WIFI*) und dein W-LAN ahand seiner SSID auswählen. Anschließend kannst du den W-LAN-Schlüssel eingeben und das Menü schließen, um mit dem W-LAN zu verbinden.

Im Abschnitt darüber kannst du sehen, ob du gerade mit einem W-LAN verbunden bist. Außerdem siehst du deine aktuelle IP-Adresse und kannst das Netzwerksymbol ein- oder ausschalten.

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

