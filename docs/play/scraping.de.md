# :material-image-plus: Scraping

Sobald du deine Spiele auf dein KNULLI-Gerät geladen hast, möchtest du möglicherweise auch Cover, Screenshots oder andere Metadaten für deine Spiele hinzufügen. Du kannst natürlich jederzeit die `gamelist.xml`-Dateien von Hand editieren und die Metadaten selbst dort einfügen. KNULLI unterstützt allerdings auch Scraping von Medien (d.h. Covers, Logos, Handbücher, Videos etc.) und Metadaten aus drei verschiedenen Quellen: [ScreenScraper](https://www.screenscraper.fr), [TheGamesDB](https://thegamesdb.net) und [ArcadeDB](http://adb.arcadeitalia.net).

!!! info "Der in KNULLI integrierte Scraper versucht, alle Medien und Metadaten deiner Spiele anhand der Dateinamen deiner ROMs (oder der Launch-Scripte deiner Ports) zu ermitteln. Wenn die Dateinamen Informationen über die Region enthalten (z.B. `(U)` oder `(EU)`), wird der Scraper diese Informationen berücksichtigen. Stelle sicher, dass alle deine ROMs und Scripte vernünftig benannt sind, andernfalls wird der Scraper die Spiele nicht identifizieren können. Falls du keinen verständlichen Dateinamen für dein Spiel festlegen kannst, z.B. weil einige Systeme verlangen, dass die Launch-Scripte einen bestimmen Namen haben (z.B. ScummVM) - mach dir keine Sorgen. Du kannst für diese Spiele die Daten einzeln von Hand scrapen."

## Gescrapete Medien anzeigen

Das Standard-Theme, das KNULLI für die grafische Benutzeroberfläche EmulationStation mitliefert, heißt [Art-Book-Next](https://github.com/anthonycaccese/art-book-next-es). Das Theme unterstützt die Darstellung von vielen der Metadaten und Medien, die du aus den von KNULLI unterstützten Scraper-Quellen beziehen kannst.

Das Theme zeigt

* in der Spieleliste des jeweiligen Systems
    * entweder das *Boxart* (Cover) oder ein *Image* (z.B. ein Screenshot) als Artwork an.
        * Drücke den ++"Start"++-Button und gehe zum Abschnitt *Theme configuration* der *User interface settings* um einzustellen, welches *Game artwork* du möchtest.
    * ein Vorschauvideo, um einen Eindruck vom Spiel zu vermitteln.
    * die Beschreibung des Spiels.
    * die Community-Bewertung des Spiels.
    * das Release-Datum.
* im Spielmenü (halte den Knopf gedrückt, mit dem du das Spiel starten würdest, um das Spiel-Menü zu öffnen)
    * das Logo des Spiels.
    * das Handbuch des Spiels.
    * andere gescrapete Medien in Form einer Galerie.

!!! info "Wenn du ein anderes Theme anstelle des Standardthemes benutzt, kann es sein, dass du keine/andere Metadaten und Medien angezeigt bekommst. Falls deine gescrapeten Informationen nicht korrekt angezeigt werden und du ein Theme benutzt, das du selbst installiert hast, bitte schau in der Dokumentation des Themes nach einer Lösung."

## Scrapen

Es gibt zwei verschiedene Möglichkeiten, um Informationen aus den Quellen zu scrapen, die KNULLI unterstützt. Du kannst entweder Informationen für deine ganze Spielesammlung (oder Teile deiner Spielesammlung) scrapen, oder du kannst Informationen für ein einzelnes spezifisches Spiel scrapen. Aber bevor du mit dem Scrapen beginnst, solltest du sicherstellen, dass der Scraper so eingestellt ist, wie du es gerne möchtest.

!!! info "Einige Scraper-Quellen begrenzen die Menge an Daten/Medien, die du pro Tag von ihnen herunterladen kannst. Du solltest versuchen, unnötige Scraping-Vorgänge zu vermeiden, in dem du erst mit dem Scrapen beginnst, wenn du deinen Scraper fertig konfiguriert hast."

### Scraper-Einstellungen

Um den Scraper einzurichten, drücke zunächst ++"Start"++, um das Hauptmenü zu öffnen und wähle *Scraper*, um das Scraper-Menü zu öffnen. Im Scraper-Menü kannst du bei *Scraper source* deine primäre Scraper-Quelle einstellen. Dies ist die Quelle, die immer dann benutzt wird, wenn du für mehrere (oder gar alle) Spiele gleichzeitig scrapen möchtest. Standardmäßig ist hier ScreenScraper ausgewählt. Du kannst allerdings stattdessen auch TheGamesDB oder ArcadeDB einstellen, falls du eine dieser Quellen bevorzugst.

!!! info "Um ScreenScraper zu nutzen, musst du in einem ScreenScraper-Account eingeloggt sein. Wenn du von ScreenScraper Daten beziehen möchtest, besuche die Homepage von [ScreenScraper](https://www.screenscraper.fr) und melde dich dort an. (Es ist kostenlos!)"

In den *Scraper settings* kannst du Name und Passwort deines ScreenScraper-Accounts hinterlegen und genau festlegen, welche Art von Daten du scrapen möchtest. Unter *Box source* kannst du einstellen, welche Art von Cover (z.B. 2D-Boxart oder 3D-Boxart) du verwenden möchtest. Unter *Logo source* kannst du einstellen, welche Art von Logo du verwenden möchtest (*wheel* beschreibt das Logo des Spiels auf einem transparenten Hintergrund ohne weitere Designelemente, die anderen Varianten sind alle in verschiedenen Formen stilisiert).

Du kannst auch eine bevorzugte Region (*Preferred region*) einstellen, da manche Spiele in verschiedenen Ländern publiziert worden und dort andere Covers und z.T. sogar andere Namen haben.

Mit den Schaltern *Overwrite descriptions* und *Overwrite medias* kannst du einstellen, ob bereits gescrapete oder von dir händisch hinterlegte Daten überschrieben werden dürfen oder nicht.

Zusätzlich zu diesen Optionen findest du noch viele weitere Schalter, mit denen du einstellen kannst, welche Medien und Metadaten du scrapen willst, darunter fallen z.B. Videos, die Community-Bewertung oder sogar das Handbuch des Spiels. Nimm dir Zeit, um deine Scraper-Einstellungen so anzupassen, wie du sie haben möchtest. Am besten probierst du danach erstmal mit einem einzelnen Spiel aus, ob dir das Ergebnis gefällt, bevor du gleich die Daten für deine ganze Spielesammlung scrapest.

### Daten eines einzelnen Spiels scrapen

Wenn du deinen Scraper fertig konfiguriert hast, kannst du ihn ausprobieren, in dem du zunächst für ein einzelnes Spiel die Medien und Metadaten scrapest. Wähle ein Spiel aus, irgendein Spiel (am besten aber eines, das relativ bekannt ist, um sicherzugehen, dass Metadaten und Medien dafür vorliegen). Geh in die Kategorie des jeweiligen Systems (z.B. SNES) und wähle ein Spiel (z.B. "Super Mario World"). Du musst jetzt die Taste drücken **und gedrückt halten**, mit der du das Spiel normalerweise starten würdest. Abhängig von deinen GUI-Einstellungen ist es wahrscheinlich ++"B"++ (Süd) oder ++"A"++ (Ost). Wenn du die Taste gedrückt hältst, öffnet sich das Spielmenü.

Am Ende des Spielmenüs kannst du *Scrape* auswählen. KNULLI wird dann versuchen, Metadaten und Medien für dein Spiel in den Scraper-Quellen zu finden. Anders als beim Scrapen von Spielelisten wird beim Scrapen für einzelne Spiele *jede* verfügbare Scraper-Quelle angefragt. Wenn alle Daten empfangen wurden, kannst du auswählen, welchen Datensatz du für das Spiel verwenden möchtest. Die Datensätze werden nach Scraper-Quelle sortiert angezeigt.

Falls der Scraper keine Ergebnisse findet (z.B. weil du nach Metadaten für ein Launch-Script eines Port suchst, das aus technischen Gründen einen obskuren Namen hat), kannst du versuchen, das richtige Spiel selbst herauszusuchen. Am unteren Bildschirmrand findest du die Schaltfläche *Input*. Wenn du sie auswählst, kannst du den Namen des Spiels, nach dem du suchst, dort selbst eingeben.

!!! info "Manche Spiele haben in verschiedenen Regionen unterschiedliche Namen. Das Spiel, das im deutschsprachigen Raum "Baphomet's Fluch" heißt, heißt im Originaltitel "Broken Sword". Falls du dein Spiel unter seinem regionalen Namen nicht findest, such nach dem internationalen Titel oder dem Originaltitel."

Nachdem du das Scraping-Ergebnis ausgesucht hast, das dir am passendsten scheint, wird der Scraper-Bildschirm sich automatisch schließen. Falls du die gescrapeten Informationen und Medien nicht sofort sehen kannst, musst du möglicherweise die `gamelist.xml`-Dateien aktualisieren. Drücke dazu auf ++"Start"++, um das Hauptmenü zu öffnen, wähle *Game settings* und wähle dort *Update gamelists* aus. Anschließend solltest du die gescrapeten Medien und Metadaten sehen können.

### Daten aller Spiele scrapen

Wenn du zum ersten Mal deine Spielesammlung auf dein KNULLI-Gerät geladen hast, möchtest du wahrscheinlich Medien für alle deine Spiele auf einmal scrapen. Nachdem du den Scraper eingestellt und an einem einzelnen Spiel getestet hast, kannst du jetzt damit loslegen. Du solltest dir aber im Klaren sein, dass Scraping von mehreren Spielen eine ganze Weile dauern kann, je nach dem wie groß deine Spielesammlung ist.

Um das Massenscrapen zu starten, drück zunächst auf ++"Start"++, um das Hauptmenü zu öffnen, und gehe in den Abschnitt *Scraper*. Dort kannst du unter der Überschrift *Filters* verschiedene Filter einstellen, um genau festzulegen, für welche deiner Spiele du Daten scrapen möchtest. Du kannst beispielsweise bestimmte Systeme aus- oder abwählen, oder Spiele  ausschließen, für die du erst kürzlich neue Daten gescrapet hast. Wenn du mit deinen Filtereinstellungen zufrieden bist, kannst du am unteren Bildschirmrand mit *Scrape now* drauflosscrapen.

KNULLI wird jetzt anfangen zu scrapen. Du kannst das Menü verlassen, da KNULLI im Hintergrund weiterscrapen wird. Solange du EmulationStation geöffnet hast, siehst du am oberen rechten Bildschirmrand den Scraping-Fortschritt. KNULLI wird auch weiterscrapen während du ein Spiel spielst. Du solltest aber darauf achten, keine Spiele zu spielen, die besonders viel Rechenleistung erfordern, während das Scraping im Hintergrund läuft, denn auch das Scraping selbst braucht nicht nur viel Zeit, sondern auch viel Rechenleistung.

Wenn der Scraping-Vorgang abgeschlossen ist, kann es sein, dass du die `gamelist.xml`-Dateien wieder aktualisieren musst, damit die Änderungen sichtbar werden. Drück auf ++"Start"++ um das Hauptmenü zu öffnen, wähle *Game settings* und dann *Update gamelists*.

Jetzt sollten alle deine Spiele die gewünschen Covers, Beschreibungen, Videos und Handbücher haben. Falls du ein Spiel entdeckst, dem keine oder falsche Medien/Metadaten zugeordnet wurden, kannst du versuchen, für dieses einzelne Spiel die Metadaten manuell zu scrapen, wie im Abschnitt [Daten für ein einzelnes Spiel scrapen](#daten-eines-einzelnen-spiels-scrapen) beschrieben.

